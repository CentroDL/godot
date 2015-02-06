# CREATE TABLE nations (
#   id               SERIAL       PRIMARY KEY,
#   country_code     VARCHAR(2)   UNIQUE NOT NULL,
#   name             VARCHAR(50)  NOT NULL,
#   head_of_state    VARCHAR(100)
# );

class Nation < ActiveRecord::Base
  has_and_belongs_to_many :space_programs
  has_many :space_travelers

  validates :name, :country_code, :presence => true
  validates :country_code, :uniqueness => true

  def thanks
    thanks = "#{head_of_state}, and all the people of #{name}, wish to extend our heartfelt gratitude to:\n"
    space_travelers.each do |space_traveler|
      thanks += "  - " + space_traveler.full_name + "\n"
    end
    puts thanks
  end
end
