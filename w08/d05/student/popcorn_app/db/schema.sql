DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS purchases CASCADE;
DROP TABLE IF EXISTS genres CASCADE;
DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS genre_movies CASCADE;

CREATE TABLE genres(
  id    SERIAL   PRIMARY KEY,
  name  VARCHAR  NOT NULL
);

CREATE TABLE movies(
  id              SERIAL     PRIMARY KEY,
  purchase_price  MONEY      DEFAULT 14.99,
  rental_price    MONEY      DEFAULT 3.99,
  available_on    DATE       NOT NULL,
  description     VARCHAR    NOT NULL,
  rating          varchar    NOT NULL,
  poster_image    VARCHAR    NOT NULL,
  length          INTERVAL   NOT NULL, --microseconds?
  created_at      timestamp  DEFAULT CURRENT_TIMESTAMP,
  updated_at      timestamp  DEFAULT CURRENT_TIMESTAMP,
  title           VARCHAR    NOT NULL
);

CREATE TABLE users(
  id          SERIAL     PRIMARY KEY,
  email       VARCHAR    UNIQUE NOT NULL,
  balance     MONEY      DEFAULT 0.00,
  born_on     DATE       NOT NULL,
  created_at  timestamp  DEFAULT CURRENT_TIMESTAMP,
  update_at   timestamp  DEFAULT CURRENT_TIMESTAMP
);



CREATE TABLE purchases(
  id            SERIAL  PRIMARY KEY,
  user_id       integer REFERENCES users(id),
  movie_id      integer REFERENCES movies(id),
  purchase_type VARCHAR NOT NULL,
  created_at    timestamp DEFAULT CURRENT_TIMESTAMP,
  updated_at    timestamp DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE genre_movies(
  genre   INTEGER REFERENCES genres(id),
  movies  INTEGER REFERENCES movies(id)
);
