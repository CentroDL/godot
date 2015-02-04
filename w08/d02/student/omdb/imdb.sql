DROP TABLE IF EXISTS actors_movies;
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS actors;


CREATE TABLE movies(
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  release_year integer NOT NULL,
  genre varchar
);

CREATE TABLE actors(
  id serial PRIMARY KEY,
  name varchar NOT NULL,
  gender varchar NOT NULL
);

CREATE TABLE actors_movies(
  movie_id integer REFERENCES movies(id),
  actor_id integer REFERENCES actors(id)
);

INSERT INTO movies (name, release_year, genre) VALUES ('Tropic Thunder', 2008, 'comedy');
INSERT INTO movies (name, release_year, genre) VALUES ('Envy', 2004, 'comedy');
INSERT INTO movies (name, release_year, genre) VALUES ('Tenacious D', 2006, 'comedy');
INSERT INTO movies (name, release_year, genre) VALUES ('Anchorman', 2004, 'comedy');
INSERT INTO movies (name, release_year, genre) VALUES ('Edward Scissorhands', 1990, 'drama');

INSERT INTO actors (name, gender) VALUES ('Ben Stiller', 'Male');
INSERT INTO actors (name, gender) VALUES ('Owen Wilson', 'Male');
INSERT INTO actors (name, gender) VALUES ('Vince Vaughn', 'Male');
INSERT INTO actors (name, gender) VALUES ('Will Ferrell', 'Male');
INSERT INTO actors (name, gender) VALUES ('Jack Black', 'Male');
INSERT INTO actors (name, gender) VALUES ('Christina Applegate', 'Female');
INSERT INTO actors (name, gender) VALUES ('Winona Ryder', 'Female');

INSERT INTO actors_movies (actor_id, movie_id) VALUES (7, 5);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (1, 1);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (5, 1);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (1, 2);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (5, 2);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (1, 3);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (5, 3);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (3, 4);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (4, 4);
INSERT INTO actors_movies (actor_id, movie_id) VALUES (6, 4);
