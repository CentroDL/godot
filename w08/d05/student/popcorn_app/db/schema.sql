DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS purchases CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS movies CASCADE;


CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  email VARCHAR UNIQUE,
  balance MONEY DEFAULT 0.00,
  born_on DATE NOT NULL
);

CREATE TABLE genres(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);

CREATE TABLE purchases(
  purchase_type VARCHAR NOT NULL,
  amount MONEY NOT NULL
);

CREATE TABLE movies(
  purchase_price MONEY NOT NULL,
  rental_price MONEY NOT NULL,
  available_on DATE NOT NULL,
  description VARCHAR NOT NULL,
  rating varchar NOT NULL,
  poster_image VARCHAR NOT NULL,
  length INTERVAL NOT NULL
);
