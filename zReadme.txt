# LocalSportsManagementSystem Project

RUn in this order
CreateDatabase.sql - Creates the tables (Team, Players, Games, PlayerGameStats).
Coaches Table: Inserts coaches.
Team Table: Inserts teams.
Players Table: Use the updated InsertPlayers.sql with 16 players per team (11 main, 5 substitutes).
For updating team captain: Sets team captains.
Game_Matches Table: Inserts games.
Injury Table: Inserts injuries.
Update Player Status: Updates injured players’ status.
Player Game Stats Table: Inserts player statistics.
Calculate Team Ratings: Computes team ratings.
Commands to show: Displays data.
Age calculation: Calculates player ages.
Number of players Calculation: Updates player counts (if implemented).
CalculateTeamRatings.sql - Updates team ratings based on goals.
Run Reports:
Open TopGoalScorers.sql





## Overview
This project is a sports management database for tracking teams, players, games, and player statistics in a local league. It includes SQL scripts to create and populate the database, calculate team ratings, and generate a top goal scorers report.

## Setup Instructions
1. **Prerequisites**:
   - MySQL installed (e.g., MySQL Community Server).
   - MySQL Workbench or another MySQL client.

2. **Import the Database** (Option 1 - Using Dump File):
   - Open MySQL Workbench.
   - Go to Server > Data Import.
   - Select "Import from Self-Contained File" and choose `LocalSportsManagementSystem_Dump.sql`.
   - Import the database. This will create the `LocalSportsManagementSystem` database with all data.

3. **Manual Setup** (Option 2 - Using Individual Scripts):
   - Create the database:
     ```sql
     CREATE DATABASE LocalSportsManagementSystem;
     USE LocalSportsManagementSystem;


Save this file in your project folder.

### Step 4: Package the Project
Compress the project folder into a single file for easy sharing:
1. **On Windows**:
   - Right-click the `LocalSportsManagementSystem` folder.
   - Select **Send to** > **Compressed (zipped) folder**.
   - This creates `LocalSportsManagementSystem.zip`.




Run in this order