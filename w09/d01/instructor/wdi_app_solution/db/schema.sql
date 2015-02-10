DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  image_url VARCHAR(255) NOT NULL
);

INSERT INTO students (name, image_url) VALUES ('Michael Campbell', 'http://www.kansascity.com/sports/college/sec/university-of-missouri/uxzy4t/picture2100441/ALTERNATES/FREE_960/MUvsUCF%2020140913%20SLK%20560F.JPG'),
                                              ('Melodie Malfa', 'https://media.licdn.com/mpr/mpr/shrink_200_200/p/3/005/09a/160/1ea41f7.jpg');
