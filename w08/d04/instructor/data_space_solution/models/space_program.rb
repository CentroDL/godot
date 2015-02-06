# CREATE TABLE space_programs (
#   id         SERIAL        PRIMARY KEY,
#   name       VARCHAR(100)  UNIQUE NOT NULL,
#   budget     DECIMAL, 
#   director   VARCHAR(100),
#   founded_on DATE          NOT NULL
# );

class SpaceProgram < ActiveRecord::Base
  has_and_belongs_to_many :nations
  has_many :space_craft
  has_many :missions

  validates :name, :founded_on, :presence => true
  validates :name, :uniqueness => true
end
