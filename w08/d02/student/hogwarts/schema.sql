DROP TABLE IF EXISTS students CASCADE;
DROP TABLE IF EXISTS houses CASCADE;
DROP TABLE IF EXISTS death_eater_memberships CASCADE;
DROP TABLE IF EXISTS spells CASCADE;

CREATE TABLE houses(
  id SERIAL PRIMARY KEY,
  name VARCHAR UNIQUE
);

CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  fname VARCHAR NOT NULL,
  lname VARCHAR NOT NULL,
  house_id integer REFERENCES houses (id)
);


-- CREATE TABLE students(
--   id SERIAL PRIMARY KEY,
--   fname VARCHAR NOT NULL,
--   lname VARCHAR NOT NULL,
--   house_name VARCHAR NOT NULL
-- );

-- these commands will change tables that already exist
CREATE TABLE spells(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);
-- ALTER TABLE students
-- RENAME COLUMN house_name
-- TO house_id;

-- ALTER TABLE students
-- ALTER COLUMN house_id TYPE integer;

CREATE TABLE death_eater_memberships(
  id SERIAL PRIMARY KEY,
  joined_on TIMESTAMP NOT NULL,
  student_id INTEGER REFERENCES students (id)
);





-- SELECT * FROM students INNER JOIN death_eater_memberships ON students.id = death_eater_memberships.student_id



