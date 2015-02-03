-- All columns for all players from the New York Knicks (NYK).
SELECT * FROM players WHERE team = 'NYK';
-- All columns for all players from the Indiana Packers (IND) who are under 26 years old.
SELECT * FROM players WHERE team = 'IND' AND age < 26;
-- All columns for all players, ordered from least points scored to most points scored.
SELECT * FROM players ORDER BY points ASC;
-- Name and Points per game (points/games), for the players with the top 20 points per game.
SELECT name, points/games AS points_per_game FROM players ORDER BY points/games DESC LIMIT 20;
-- The average age for all players.
SELECT AVG(age) AS average_age FROM players;
-- The average age for all players on the Oklahoma City Thunder (OKC).
SELECT AVG(age) AS average_age_on_OKC_thunders FROM players WHERE team = 'OKC';
-- The average age for all players who played more than 40 games.
SELECT AVG(age) AS avg_age_40 FROM players WHERE games > 40;
