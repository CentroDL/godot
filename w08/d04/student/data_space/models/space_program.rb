# CREATE TABLE space_programs (
#   id         SERIAL        PRIMARY KEY,
#   name       VARCHAR(50)   UNIQUE NOT NULL,
#   budget     DECIMAL, -- http://stackoverflow.com/questions/1019939/ruby-on-rails-best-method-of-handling-currency-money
#   director   VARCHAR(100),
#   founded_on DATE          NOT NULL,
#   nation_id  INTEGER       REFERENCES nations(id)
# );
class SpaceProgram < ActiveRecord::Base

  belongs_to :nation

  validates :name,       uniqueness: true
  validates :name,       presence: true
  validates :founded_on, presence: true

end
