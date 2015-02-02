DROP TABLE IF EXISTS jedis;

CREATE TABLE jedis (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  lightsaber_color varchar(50) NOT NULL,
  years_training integer NOT NULL,
  tempted_by_dark_side boolean NOT NULL,
  temptation varchar(50) NOT NULL
);

INSERT INTO jedis (name, lightsaber_color, years_training, tempted_by_dark_side, temptation) VALUES
  ('Darth Carver','red',7,TRUE,'gambling on sports'),
  ('Grand Master Valencia','white',5,FALSE,'futbol'),
  ('Simons Calrissian','blue',5,FALSE,'cantina curly fries'),
  ('Chadd Paul Calrissian','purple',8,FALSE,'scuba'),
  ('Melodie Maul','red',8,TRUE,'dagobah yoga'),
  ('Aliya Secura','orange',8,FALSE,'chocolate sculpture'),
  ('Angelina Organa','blue',5,FALSE,'crafts'),
  ('Macfarlane','red',6,FALSE,'geomancing'),
  ('Dana Organa','blue',5,FALSE,'mass media pirating'),
  ('Patricio Skywalker','blue',9,TRUE,'snacks'),
  ('Michael Plagueis','red',6,TRUE,'CBS crime dramas'),
  ('Dennis Duo','orange',5,FALSE, 'dota 2'),
  ('Bri-Gon Jinn','green',7,TRUE, 'wonderwall on repeat'),
  ('Sade Sidius','red',6,FALSE, 'fashion'),
  ('Kamari Gunray','green',5,TRUE,'sticking to a schedule'),
  ('Sarah MacAlderaan','purple',8,TRUE, 'chocolate from the nineties');
