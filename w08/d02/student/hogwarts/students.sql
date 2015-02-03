-- remove any records and start the id sequence back to 1
TRUNCATE TABLE students RESTART IDENTITY CASCADE;

INSERT INTO students
  (fname, lname, house_id)
VALUES
  ('Harry', 'Potter',  '1'),
  ('Ron', 'Weasly',  '1'),
  ('Draco', 'Malfoy',  '4'),
  ('Vincent', 'Crabbe',  '4'),
  ('Luna', 'Lovegood',  '3'),
  ('Padma', 'Patil',  '3'),
  ('Cedric', 'Diggory',  '2'),
  ('Justin', 'Finch-Fletchley',  '2');

