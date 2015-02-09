# CREATE TABLE genres (
#   id serial PRIMARY KEY,
#   name varchar NOT NULL UNIQUE,
#   created_at TIMESTAMP,
#   updated_at TIMESTAMP
# );

class Genre < ActiveRecord::Base
  has_and_belongs_to_many :movies
  validates :name, presence: true,
                   uniqueness: true
end
