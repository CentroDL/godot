DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
  badge_number SERIAL      PRIMARY KEY,
  name         VARCHAR(50) NOT NULL,
  age          INTEGER     NOT NULL,
  title        VARCHAR(50) NOT NULL
);
