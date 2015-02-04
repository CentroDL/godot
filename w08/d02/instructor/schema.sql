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

CREATE TABLE spells_students (
  spell_id integer REFERENCES spells(id),
  student_id integer REFERENCES students(id)
);

-- import students.sql and houses.sql
-- HOW DO WE CONNECT?

SELECT students.*, houses.*
FROM students
INNER JOIN houses
ON students.house_id = houses.id;

create table death_eater_memberships (
  id serial PRIMARY KEY,
  joined_on timestamp,
  student_id integer REFERENCES students(id)
);

-- find all the death eaters not in slytherin

select students.fname, death_eater_memberships.*, houses.name
from students
inner join death_eater_memberships
on death_eater_memberships.student_id = students.id
inner join houses
on students.house_id = houses.id
WHERE houses.name != 'Slytherin';
