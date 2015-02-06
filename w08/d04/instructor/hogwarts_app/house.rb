# CREATE TABLE houses(
#   id serial PRIMARY KEY,
#   name varchar(50) UNIQUE
# );

class House < ActiveRecord::Base
  has_many :students

  validates :name, uniqueness: true
end
