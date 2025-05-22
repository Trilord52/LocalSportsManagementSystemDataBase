-- Optional: Drop existing triggers if you want to recreate them (uncomment and run if needed)
 SET SQL_SAFE_UPDATES = 0;
 DROP TRIGGER IF EXISTS update_team_player_count;
 DROP TRIGGER IF EXISTS update_team_player_count_after_delete;

DELIMITER //

-- Create trigger for player count update after insertion
CREATE TRIGGER IF NOT EXISTS update_team_player_count
AFTER INSERT ON Players
FOR EACH ROW
BEGIN
    UPDATE Team
    SET number_of_players = (
        SELECT COUNT(*)
        FROM Players
        WHERE team_id = NEW.team_id
    )
    WHERE team_id = NEW.team_id;
END //

-- Create trigger for player count update after deletion
CREATE TRIGGER IF NOT EXISTS update_team_player_count_after_delete
AFTER DELETE ON Players
FOR EACH ROW
BEGIN
    UPDATE Team
    SET number_of_players = (
        SELECT COUNT(*)
        FROM Players
        WHERE team_id = OLD.team_id
    )
    WHERE team_id = OLD.team_id;
END //

DELIMITER ;

-- Initialize the number_of_players for each team
UPDATE Team t
SET number_of_players = (
    SELECT COUNT(*)
    FROM Players p
    WHERE p.team_id = t.team_id
);
SET SQL_SAFE_UPDATES = 1;