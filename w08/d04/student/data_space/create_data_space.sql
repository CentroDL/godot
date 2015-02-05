DROP TABLE IF EXISTS missions_space_crafts;
DROP TABLE IF EXISTS missions;
DROP TABLE IF EXISTS space_programs;
DROP TABLE IF EXISTS space_travelers;
DROP TABLE IF EXISTS space_crafts;
DROP TABLE IF EXISTS nations;
DROP TYPE  IF EXISTS genders;
DROP TYPE  IF EXISTS roles;

CREATE TABLE nations (
  id            SERIAL       PRIMARY KEY,
  country_code  VARCHAR(2)   NOT NULL, -- ISO 3166-1 codes (CCs)
  name          VARCHAR(50)  NOT NULL,
  head_of_state VARCHAR(100)
);
CREATE TABLE space_crafts (
  id         SERIAL       PRIMARY KEY,
  name       VARCHAR(100) NOT NULL,
  craft_type VARCHAR(100),
  capacity   INTEGER      DEFAULT 5
);
-- O, or other, includes N/A, Unknown or Did Not Respond
CREATE TYPE genders AS ENUM ('M','F','O');
-- compiled from:
-- http://en.wikipedia.org/wiki/Astronaut_ranks_and_positions
CREATE TYPE roles AS ENUM (
  'Commander',
  'Module Commander',
  'Pilot',
  'Second Pilot',
  'Module Pilot',
  'Flight Engineer',
  'Science Officer',
  'Mission Specialist',
  'Scientist',
  'Doctor',
  'Payload Commander ',
  'Payload Specialist',
  'Spaceflight Participant'
);
CREATE TABLE space_travelers (
  id        SERIAL       PRIMARY KEY,
  name      VARCHAR(100) NOT NULL,
  role      roles        DEFAULT 'Spaceflight Participant',
  born_on   DATE         NOT NULL,
  gender    genders      NOT NULL,
  nation_id INTEGER      REFERENCES nations(id)
);
CREATE TABLE space_programs (
  id         SERIAL        PRIMARY KEY,
  name       VARCHAR(50)   NOT NULL,
  budget     DECIMAL, -- http://stackoverflow.com/questions/1019939/ruby-on-rails-best-method-of-handling-currency-money
  director   VARCHAR(100),
  founded_on DATE          NOT NULL,
  nation_id  INTEGER       REFERENCES nations(id)
);
CREATE TABLE missions (
  id               SERIAL       PRIMARY KEY,
  name             VARCHAR(100) NOT NULL,
  start_date       DATE         NOT NULL,
  end_date         DATE,
  space_program_id INTEGER      REFERENCES space_programs(id),
  space_craft_id   INTEGER      REFERENCES space_crafts(id),
  piloted_by_id    INTEGER      REFERENCES space_travelers(id)
);
CREATE TABLE missions_space_crafts (
  mission_id     INTEGER REFERENCES missions(id),
  space_craft_id INTEGER REFERENCES space_crafts(id)
);
