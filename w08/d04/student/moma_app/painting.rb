# A Painting has
# title

# CREATE TABLE paintings(
#   id SERIAL PRIMARY KEY,
#   title VARCHAR NOT NULL,
#   artist INTEGER REFERENCES artists (id)
# );

class Painting < ActiveRecord::Base

  belongs_to :artist

  validates :title, presence: true
end
