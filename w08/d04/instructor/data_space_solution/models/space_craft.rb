# CREATE TABLE space_crafts (
#   id               SERIAL       PRIMARY KEY,
#   name             VARCHAR(100) NOT NULL,
#   craft_type       VARCHAR(100),
#   capacity         INTEGER      DEFAULT 5,
#   space_program_id INTEGER      REFERENCES space_programs(id)
# );

class SpaceCraft < ActiveRecord::Base
  belongs_to :space_program
  has_many :missions

  validates :name, :presence => true
end
