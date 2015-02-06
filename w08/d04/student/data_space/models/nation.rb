# CREATE TABLE nations (
#   id            SERIAL       PRIMARY KEY,
#   country_code  VARCHAR(2)   UNIQUE NOT NULL, -- ISO 3166-1 codes (CCs)
#   name          VARCHAR(50)  NOT NULL,
#   head_of_state VARCHAR(100)
# );

class Nation < ActiveRecord::Base

  has_many :space_programs
  has_many :space_travellers

  validates :country_code,  presence: true
  validates :country_code,  uniqueness: true
  validates :country_code,  length: { maximum: 2 }
  validates :name,          presence: true
  validates :name,          length: { maximum: 50 }
  validates :head_of_state, length: { maximum: 100 }

end
