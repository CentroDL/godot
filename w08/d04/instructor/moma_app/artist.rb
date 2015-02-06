# create table artists (
#   id serial primary key,
#   name varchar,
#   nationality varchar
# );

class Artist < ActiveRecord::Base
  has_many :paintings
end
