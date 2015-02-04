-- remove any records and start the id sequence back to 1
TRUNCATE TABLE houses RESTART IDENTITY CASCADE;

INSERT INTO houses
  (name)
VALUES
  ('Gryffindor'),
  ('Hufflepuff'),
  ('Ravenclaw'),
  ('Slytherin');
