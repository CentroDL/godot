DROP TABLE IF EXISTS nations           CASCADE;
DROP TABLE IF EXISTS space_programs    CASCADE;
DROP TABLE IF EXISTS missions          CASCADE;
DROP TABLE IF EXISTS spacecraft        CASCADE;
DROP TABLE IF EXISTS space_traveler    CASCADE;
DROP TABLE IF EXISTS traveler_missions CASCADE;

CREATE TABLE nations(
  id            SERIAL  PRIMARY KEY,
  country_code  integer UNIQUE,
  name          VARCHAR NOT NULL,
  head_of_state VARCHAR NOT NULL
);

CREATE TABLE spacecraft(
  id       SERIAL  PRIMARY KEY,
  name     VARCHAR UNIQUE,
  type     VARCHAR NOT NULL,
  capacity INTEGER NOT NULL
);

CREATE TABLE space_programs(
  id         SERIAL   PRIMARY KEY,
  name       VARCHAR  NOT NULL,
  budget     MONEY    NOT NULL,
  director   VARCHAR  NOT NULL,
  founded_on DATE     DEFAULT CURRENT_DATE,
  nation     INTEGER  REFERENCES nations (id) --do we need this?
);

CREATE TABLE space_travelers(
  id        SERIAL     PRIMARY KEY,
  name      VARCHAR    NOT NULL,
  role      VARCHAR    NOT NULL,
  born_on   DATE       NOT NULL,
  gender    VARCHAR(6) NOT NULL,
  nation_id INTEGER    REFERENCES nations (id)
);

CREATE TABLE missions(
  id               SERIAL  PRIMARY KEY,
  name             VARCHAR NOT NULL,
  start_date       DATE    NOT NULL,
  end_date         DATE    NOT NULL,
  space_program_id INTEGER REFERENCES space_programs  (id),
  space_craft_id   INTEGER REFERENCES spacecraft      (id),
  piloted_by_id    INTEGER REFERENCES space_travelers (id)
);

CREATE TABLE traveler_missions(
  mission_id        integer REFERENCES missions        (id),
  space_traveler_id integer REFERENCES space_travelers (id)
);


