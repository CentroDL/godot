# CREATE TABLE missions (
#   id               SERIAL       PRIMARY KEY,
#   name             VARCHAR(100) NOT NULL,
#   start_date       DATE         NOT NULL,
#   end_date         DATE,
#   space_program_id INTEGER      REFERENCES space_programs(id),
#   space_craft_id   INTEGER      REFERENCES space_crafts(id),
#   piloted_by_id    INTEGER      REFERENCES space_travelers(id)
# );

class Mission < ActiveRecord::Base
  belongs_to :space_program
  belongs_to :space_craft
  has_and_belongs_to_many :space_travelers
  belongs_to :pilot, class_name: 'SpaceTraveler',foreign_key: 'piloted_by_id'

  validates :name, :start_date, :presence => true

  def ongoing?
    (end_date == nil || end_date >= Date.today)
  end
end
