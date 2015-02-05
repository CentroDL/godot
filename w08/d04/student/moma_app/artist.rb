# An Artist has
# name
# nationality

# CREATE TABLE artists(
#   id SERIAL PRIMARY KEY,
#   name VARCHAR NOT NULL,
#   nationality VARCHAR NOT NULL
# );

class Artist < ActiveRecord::Base

  has_many :paintings

  validates :name, :nationality, presence: true
end
