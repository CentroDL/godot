# CREATE TABLE space_travelers (
#   id        SERIAL       PRIMARY KEY,
#   name      VARCHAR(100) NOT NULL,
#   role      roles        DEFAULT 'Spaceflight Participant',
#   born_on   DATE         NOT NULL,
#   gender    genders      NOT NULL,
#   nation_id INTEGER      REFERENCES nations(id)
# );
class SpaceTraveler < ActiveRecord::Base

  belongs_to :nation
  has_and_belongs_to_many :missions

  validates :name, presence: true
  validates :born_on, presence: true
  validates :gender, presence: true


end
