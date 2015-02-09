DROP TABLE IF EXISTS genres_movies;
DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS genres;

CREATE TABLE users (
  id serial PRIMARY KEY,
  login varchar NOT NULL UNIQUE,
  balance numeric(4,2) DEFAULT 0,
  born_on TIMESTAMP,
  updated_at TIMESTAMP,
  created_at TIMESTAMP
);

CREATE TABLE movies (
  id serial PRIMARY KEY,
  purchase_price numeric(4,2) DEFAULT 14.99,
  rental_price numeric(4,2) DEFAULT 3.99,
  available_on TIMESTAMP,
  description text,
  rating varchar,
  poster_image text,
  length integer,
  title varchar NOT NULL,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TABLE genres (
  id serial PRIMARY KEY,
  name varchar NOT NULL UNIQUE,
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);

CREATE TABLE purchases (
  id serial PRIMARY KEY,
  purchase_type varchar,
  amount money,
  created_at TIMESTAMP,
  updated_at TIMESTAMP,
  user_id integer REFERENCES users(id),
  movie_id integer REFERENCES movies(id)
);

CREATE TABLE genres_movies (
  genre_id integer REFERENCES genres(id),
  movie_id integer REFERENCES movies(id)
);

