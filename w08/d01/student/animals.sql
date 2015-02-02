DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
  id           SERIAL PRIMARY KEY,
  species      VARCHAR(100)   NOT NULL,
  sex          VARCHAR(6)     NOT NULL,
  is_carnivore BOOLEAN        NOT NULL
);
