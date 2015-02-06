# CREATE TABLE spells (
#   id serial PRIMARY KEY,
#   name varchar UNIQUE
# );
class Spell < ActiveRecord::Base
  has_and_belongs_to_many :students
  validates :name, uniqueness: true
end
