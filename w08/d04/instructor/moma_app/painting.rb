# create table paintings (
#   id serial primary key,
#   title varchar,
#   artist_id integer references artists(id)
# );

class Painting < ActiveRecord::Base
  belongs_to :artist
end
