DROP TABLE IF EXISTS buildings CASCADE;
DROP TABLE IF EXISTS apartments CASCADE;
DROP TABLE IF EXISTS tenants CASCADE;
DROP TABLE IF EXISTS doormen CASCADE;

CREATE TABLE buildings(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  address VARCHAR NOT NULL,
  num_floors INTEGER
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  floor INTEGER NOT NULL, -- CHECK THIS CONSTRAINT, maybe integer < # of floors?
  name VARCHAR NOT NULL,
  price INTEGER NOT NULL,
  sqft INTEGER NOT NULL,
  bedrooms INTEGER NOT NULL,
  bathrooms INTEGER NOT NULL,
  building_id INTEGER REFERENCES buildings (id)
);

CREATE TABLE tenants(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  age INTEGER NOT NULL,
  gender VARCHAR(6) NOT NULL,
  apartment_id INTEGER REFERENCES apartments (id)
);

CREATE TABLE doormen(
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  experience INTEGER NOT NULL,
  shift VARCHAR(5) NOT NULL,
  building_id INTEGER REFERENCES buildings (id)
);



