CREATE DATABASE LocalSportsManagementSystem;
-- Use the existing database
USE LocalSportsManagementSystem;

-- 1. COACH TABLE
CREATE TABLE Coach (
    coach_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    years_experience INT,
    phone_number VARCHAR(15)
);

-- 2. TEAM TABLE (captain_player_id FK will be added after Players table is created)
CREATE TABLE Team (
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(100) NOT NULL,
    city VARCHAR(100) NOT NULL,
    coach_id INT,
    captain_player_id INT,
    team_rating FLOAT DEFAULT 0.0,
    number_of_players INT DEFAULT 0,  -- For the trigger in the Number of players Calculation tab
    FOREIGN KEY (coach_id) REFERENCES Coach(coach_id)
);

-- 3. PLAYERS TABLE
CREATE TABLE Players (
    player_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    phone_number VARCHAR(15),
    skill_level VARCHAR(50),
    position VARCHAR(50) NOT NULL,
    team_id INT NOT NULL,
    status ENUM('Not Injured', 'Injured') DEFAULT 'Not Injured',
    is_main_11 BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (team_id) REFERENCES Team(team_id)
);

-- 4. ADD FOREIGN KEY to TEAM for captain_player_id after Players table exists
ALTER TABLE Team
ADD CONSTRAINT fk_team_captain
FOREIGN KEY (captain_player_id) REFERENCES Players(player_id);

-- 5. GAMES TABLE
CREATE TABLE Games (
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    team1_id INT NOT NULL,
    team2_id INT NOT NULL,
    place_venue VARCHAR(100) NOT NULL,
    time_date DATETIME NOT NULL,
    result VARCHAR(100),
 
    FOREIGN KEY (team1_id) REFERENCES Team(team_id),
    FOREIGN KEY (team2_id) REFERENCES Team(team_id),

    CHECK (team1_id <> team2_id)
);

-- 6. INJURY RECORDS TABLE
CREATE TABLE InjuryRecords (
    injury_id INT PRIMARY KEY AUTO_INCREMENT,
    player_id INT NOT NULL,
    case_of_injury TEXT NOT NULL,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- 7. PLAYER GAME STATISTICS TABLE
CREATE TABLE PlayerGameStats (
    player_id INT NOT NULL,
    game_id INT NOT NULL,
    goals INT DEFAULT 0,
    yellow_cards INT DEFAULT 0,
    red_cards INT DEFAULT 0,
    PRIMARY KEY (player_id, game_id),
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);