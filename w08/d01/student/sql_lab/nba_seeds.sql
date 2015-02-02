DROP TABLE IF EXISTS players;

CREATE TABLE players(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  team VARCHAR(50) NOT NULL,
  games INTEGER NOT NULL,
  points INTEGER NOT NULL
);

-- Anderson Varejao, age: 29, team: CLE, games: 25, points: 271

INSERT INTO players ( name, age, team, games, points) VALUES ( 'Anderson Varejao', 29, 'CLE', 25, 271 );
-- name
-- age
-- team
-- games
-- points
