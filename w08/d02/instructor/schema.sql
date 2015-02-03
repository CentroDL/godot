DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;


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

-- import students.sql and houses.sql
-- HOW DO WE CONNECT?
SELECT students.*, houses.*
FROM students
INNER JOIN houses
ON students.house_id = houses.id;
