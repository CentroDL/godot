DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS houses CASCADE;
DROP TABLE IF EXISTS death_eater_memberships CASCADE;
DROP TABLE IF EXISTS spells CASCADE;
DROP TABLE IF EXISTS spells_students CASCADE;

CREATE TABLE houses(
  id serial PRIMARY KEY,
  name varchar(50) UNIQUE
);

create table students (
  id serial PRIMARY KEY,
  fname varchar NOT NULL,
  lname varchar NOT NULL,
  house_id integer REFERENCES houses(id)
);

CREATE TABLE spells (
  id serial PRIMARY KEY,
  name varchar UNIQUE
);

-- this is the join table
-- we don't create an active record model
-- we just put has_and_belongs_to_many on both
-- foreign key tables
CREATE TABLE spells_students (
  spell_id integer REFERENCES spells(id),
  student_id integer REFERENCES students(id)
);

create table death_eater_memberships (
  id serial PRIMARY KEY,
  joined_on timestamp,
  student_id integer REFERENCES students(id)
);
