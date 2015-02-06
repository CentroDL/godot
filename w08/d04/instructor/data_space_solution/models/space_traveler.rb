# CREATE TYPE genders AS ENUM ('M','F','O');
# CREATE TYPE roles AS ENUM (
#   'Commander',
#   'Module Commander',
#   'Pilot',
#   'Second Pilot',
#   'Module Pilot',
#   'Flight Engineer',
#   'Science Officer',
#   'Mission Specialist',
#   'Scientist',
#   'Doctor',
#   'Payload Commander',
#   'Payload Specialist',
#   'Spaceflight Participant'
# );
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
  has_many :missions_piloted, class_name: 'Mission', foreign_key: 'piloted_by_id'

  validates :name, :born_on, :gender, :presence => true
  validates :role, inclusion: { in: [
    'Commander',
    'Module Commander', 
    'Pilot', 
    'Second Pilot', 
    'Module Pilot', 
    'Flight Engineer', 
    'Science Officer', 
    'Mission Specialist', 
    'Scientist', 
    'Doctor', 
    'Payload Commander', 
    'Payload Specialist', 
    'Spaceflight Participant'
  ]}
  validates :gender, inclusion: { in: %w(M F O) }

  def age
    now = Time.now.utc.to_date
    now.year - born_on.year - ((now.month > born_on.month || (now.month == born_on.month && now.day >= born_on.day)) ? 0 : 1)
  end

  def full_name
    title = case nation.country_code
    when 'SU', 'RU'
      'Cosmonaut'
    when 'FR'
      'Spationaut'
    when 'CN'
      'Taikonaut'
    else
      'Astronaut'
    end

    "#{role} #{name}, #{title}"
  end
end
