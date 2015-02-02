DROP TABLE IF EXISTS actors;

CREATE TABLE actors(
  id SERIAL PRIMARY KEY,
  actor VARCHAR(25) NOT NULL,
  character VARCHAR(25) NOT NULL,
  episodes INTEGER NOT NULL,
  start_year INTEGER NOT NULL,
  end_year INTEGER NOT NULL
);

-- creates a table called actors with columns for:
-- actor
-- character
-- episodes
-- start_year
-- end_year
-- inserts the actor:
-- Demi Lovato, character: Hayley May, episodes: 1, start year: 2010, end year: 2010
INSERT INTO actors (actor, character, episodes, start_year, end_year) VALUES ('Demi Lovato', 'Hayley May', 1, 2010, 2010);
