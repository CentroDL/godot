create table artists (
  id serial primary key,
  name varchar,
  nationality varchar
);

create table paintings (
  id serial primary key,
  title varchar,
  artist_id integer references artists(id)
);
