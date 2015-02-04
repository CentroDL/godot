DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age  INTEGER NOT NULL
);

DROP TABLE IF EXISTS animals;

CREATE TABLE animals(
  id SERIAL PRIMARY KEY,
  species VARCHAR(50) NOT NULL,
  sex VARCHAR(10) NOT NUll,
  is_carnivore BOOLEAN NOT NULL
);

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL,
  title VARCHAR(50),
  badge_number VARCHAR(15) UNIQUE NOT NULL
);

INSERT INTO students (name, age) VALUES ('Dennis', 15);
INSERT INTO students (name, age) VALUES ('Sade', 74);
INSERT INTO students (name, age) VALUES ('Marfarlane', 99);
INSERT INTO students (name, age) VALUES ('Bruckers', 22);

INSERT INTO animals (species, sex, is_carnivore) VALUES ('cat', 'male', true);
INSERT INTO employees (name, age, title, badge_number) VALUES ('Travis', 28, 'Instructor', '9jg71');

-- Updates all students ages
UPDATE students SET age = 100;

-- Updates the age of the student with id of 1
UPDATE students SET age = 53 WHERE id = 1;

-- Deletes the student with id of 5
DELETE FROM students WHERE id = 5;

INSERT INTO employees (name, age, title, badge_number) VALUES ('Phil', 91, 'Instructor', '55jk');
INSERT INTO employees (name, age, title, badge_number) VALUES ('PJ', 71, 'Instructor', '21nn');
INSERT INTO employees (name, age, title, badge_number) VALUES ('Travis', 98, 'Instructor', 'nfl64');
INSERT INTO employees (name, age, title, badge_number) VALUES ('Inhak Kim', 31, 'Chief Demon', 'nfl21mm');

-- Deletes the user where name is Inhak
DELETE FROM students WHERE name = 'Inhak Kim';

UPDATE students SET name = 'Philco' WHERE name = 'Phil';
UPDATE students SET name = 'Trizzle' WHERE name = 'Travis';
UPDATE students SET name = 'Philliam' WHERE name = 'PJ';
