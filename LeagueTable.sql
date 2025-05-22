-- Step 1: Calculate match outcomes (Wins, Draws, Losses) for each team
WITH MatchOutcomes AS (
    SELECT
        g.game_id,
        g.team1_id AS team_id,
        CASE
            WHEN g.result LIKE '%Draw%' THEN 'D'
            WHEN g.result LIKE '%wins%' THEN
                CASE
                    WHEN g.result LIKE CONCAT('%', (SELECT team_name FROM Team WHERE team_id = g.team1_id), '%') THEN 'W'
                    ELSE 'L'
                END
            ELSE
                -- Parse score if available (e.g., "2-1" from "St. George wins 2-1")
                CASE
                    WHEN SUBSTRING_INDEX(SUBSTRING_INDEX(g.result, ' ', -1), '-', 1) > SUBSTRING_INDEX(g.result, '-', -1) THEN 'W'
                    WHEN SUBSTRING_INDEX(SUBSTRING_INDEX(g.result, ' ', -1), '-', 1) < SUBSTRING_INDEX(g.result, '-', -1) THEN 'L'
                    ELSE 'D'
                END
        END AS outcome
    FROM Games g
    JOIN Team t1 ON g.team1_id = t1.team_id
    JOIN Team t2 ON g.team2_id = t2.team_id
    UNION ALL
    SELECT
        g.game_id,
        g.team2_id AS team_id,
        CASE
            WHEN g.result LIKE '%Draw%' THEN 'D'
            WHEN g.result LIKE '%wins%' THEN
                CASE
                    WHEN g.result LIKE CONCAT('%', (SELECT team_name FROM Team WHERE team_id = g.team2_id), '%') THEN 'W'
                    ELSE 'L'
                END
            ELSE
                -- Parse score if available
                CASE
                    WHEN SUBSTRING_INDEX(SUBSTRING_INDEX(g.result, ' ', -1), '-', 1) < SUBSTRING_INDEX(g.result, '-', -1) THEN 'W'
                    WHEN SUBSTRING_INDEX(SUBSTRING_INDEX(g.result, ' ', -1), '-', 1) > SUBSTRING_INDEX(g.result, '-', -1) THEN 'L'
                    ELSE 'D'
                END
        END AS outcome
    FROM Games g
    JOIN Team t1 ON g.team1_id = t1.team_id
    JOIN Team t2 ON g.team2_id = t2.team_id
),

-- Step 2: Calculate goals for and against from PlayerGameStats
Goals AS (
    SELECT
        p.team_id,
        SUM(CASE WHEN p.team_id = g.team1_id THEN pgs.goals ELSE 0 END) AS goals_for_team1,
        SUM(CASE WHEN p.team_id = g.team2_id THEN pgs.goals ELSE 0 END) AS goals_for_team2,
        SUM(CASE WHEN p.team_id = g.team1_id THEN 0 ELSE pgs.goals END) AS goals_against_team1,
        SUM(CASE WHEN p.team_id = g.team2_id THEN 0 ELSE pgs.goals END) AS goals_against_team2
    FROM PlayerGameStats pgs
    JOIN Players p ON pgs.player_id = p.player_id
    JOIN Games g ON pgs.game_id = g.game_id
    GROUP BY p.team_id, g.game_id
),

-- Step 3: Aggregate goals for and against per team
TeamGoals AS (
    SELECT
        team_id,
        SUM(goals_for_team1 + goals_for_team2) AS goals_for,
        SUM(goals_against_team1 + goals_against_team2) AS goals_against
    FROM Goals
    GROUP BY team_id
),

-- Step 4: Aggregate match outcomes and compute points
TeamStats AS (
    SELECT
        t.team_id,
        t.team_name,
        COUNT(m.team_id) AS matches_played,
        SUM(CASE WHEN m.outcome = 'W' THEN 1 ELSE 0 END) AS wins,
        SUM(CASE WHEN m.outcome = 'D' THEN 1 ELSE 0 END) AS draws,
        SUM(CASE WHEN m.outcome = 'L' THEN 1 ELSE 0 END) AS losses,
        tg.goals_for,
        tg.goals_against,
        (SUM(CASE WHEN m.outcome = 'W' THEN 3 WHEN m.outcome = 'D' THEN 1 ELSE 0 END)) AS points
    FROM Team t
    LEFT JOIN MatchOutcomes m ON t.team_id = m.team_id
    LEFT JOIN TeamGoals tg ON t.team_id = tg.team_id
    GROUP BY t.team_id, t.team_name
)

-- Step 5: Display the league table, sorted by points (descending), then goals_for (descending)
SELECT
    team_name AS Team,
    matches_played AS P,
    wins AS W,
    draws AS D,
    losses AS L,
    goals_for AS GF,
    goals_against AS GA,
    points AS Pts
FROM TeamStats
ORDER BY points DESC, goals_for DESC;