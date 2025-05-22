-- Calculate total goals scored by each team (sum of goals by all players in all games)
SET SQL_SAFE_UPDATES = 0;
UPDATE Team t
JOIN (
    SELECT p.team_id, SUM(pgs.goals) * 10 AS rating
    FROM PlayerGameStats pgs
    JOIN Players p ON pgs.player_id = p.player_id
    GROUP BY p.team_id
) AS subquery ON t.team_id = subquery.team_id
SET t.team_rating = LEAST(subquery.rating, 100.0);
SET SQL_SAFE_UPDATES = 1;

SELECT team_id, team_name, team_rating
FROM Team;


-- Top Goal Scorers Report
SELECT
    p.player_id,
    p.first_name,
    p.last_name,
    t.team_name,
    SUM(pgs.goals) AS total_goals,
    SUM(pgs.yellow_cards) AS total_yellow_cards,
    SUM(pgs.red_cards) AS total_red_cards
FROM PlayerGameStats pgs
JOIN Players p ON pgs.player_id = p.player_id
JOIN Team t ON p.team_id = t.team_id
GROUP BY p.player_id, p.first_name, p.last_name, t.team_name
HAVING total_goals > 0
ORDER BY total_goals DESC, total_yellow_cards ASC, total_red_cards ASC
LIMIT 10;
