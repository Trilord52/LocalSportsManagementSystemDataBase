-- Step 1: Show all tables in the database
SHOW TABLES;

-- Step 2: Describe the structure of each table
DESCRIBE Coach;
DESCRIBE Team;
DESCRIBE Players;
DESCRIBE Games;
DESCRIBE InjuryRecords;
DESCRIBE PlayerGameStats;

-- Step 3: Display all Coaches
-- Shows all coach details
SELECT * FROM Coach;

-- Step 4: Display all Teams with Captain and Coach Details
-- Shows team information including captain and coach names
SELECT
    t.team_id,
    t.team_name,
    t.city,
    t.team_rating,
    t.number_of_players,
    t.captain_player_id,
    p.first_name AS captain_first_name,
    p.last_name AS captain_last_name,
    t.coach_id,
    c.first_name AS coach_first_name,
    c.last_name AS coach_last_name
FROM
    Team t
LEFT JOIN
    Players p ON t.captain_player_id = p.player_id
LEFT JOIN
    Coach c ON t.coach_id = c.coach_id;

-- Step 5: Display all Players with Team Names
-- Shows player details including team affiliation and main/substitute status
SELECT
    p.player_id,
    p.first_name,
    p.last_name,
    p.dob,
    p.phone_number,
    p.skill_level,
    p.position,
    p.team_id,
    t.team_name,
    p.status,
    p.is_main_11,
    TIMESTAMPDIFF(YEAR, p.dob, CURDATE()) AS age
FROM
    Players p
JOIN
    Team t ON p.team_id = t.team_id
ORDER BY p.team_id, p.is_main_11 DESC, p.player_id;

-- Step 6: Display all Games
-- Shows game details including team names (captain details removed)
SELECT
    g.game_id,
    t1.team_name AS team1_name,
    t2.team_name AS team2_name,
    g.place_venue,
    g.time_date,
    g.result
FROM
    Games g
JOIN
    Team t1 ON g.team1_id = t1.team_id
JOIN
    Team t2 ON g.team2_id = t2.team_id;

-- Step 7: Display all Injury Records with Player Details
-- Shows injury details linked to players
SELECT
    ir.injury_id,
    p.player_id,
    p.first_name,
    p.last_name,
    p.team_id,
    t.team_name,
    ir.case_of_injury
FROM
    InjuryRecords ir
JOIN
    Players p ON ir.player_id = p.player_id
JOIN
    Team t ON p.team_id = t.team_id;

-- Step 8: Display all Player Game Statistics
-- Shows player performance stats linked to games
SELECT
    pgs.player_id,
    p.first_name,
    p.last_name,
    p.team_id,
    t.team_name,
    pgs.game_id,
    g.place_venue,
    g.time_date,
    pgs.goals,
    pgs.yellow_cards,
    pgs.red_cards
FROM
    PlayerGameStats pgs
JOIN
    Players p ON pgs.player_id = p.player_id
JOIN
    Team t ON p.team_id = t.team_id
JOIN
    Games g ON pgs.game_id = g.game_id
ORDER BY pgs.game_id, pgs.player_id;

-- Step 9: Display Summary of Team Ratings and Player Counts
-- Summarizes team ratings and number of players
SELECT
    t.team_id,
    t.team_name,
    t.team_rating,
    t.number_of_players,
    SUM(CASE WHEN p.is_main_11 = TRUE THEN 1 ELSE 0 END) AS main_11_count,
    SUM(CASE WHEN p.is_main_11 = FALSE THEN 1 ELSE 0 END) AS substitute_count
FROM
    Team t
JOIN
    Players p ON t.team_id = p.team_id
GROUP BY
    t.team_id, t.team_name, t.team_rating, t.number_of_players;