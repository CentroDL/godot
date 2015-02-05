# create table students (
#   id serial PRIMARY KEY,
#   fname varchar NOT NULL,
#   lname varchar NOT NULL,
#   house_id integer REFERENCES houses(id)
# );

class Student < ActiveRecord::Base

  has_and_belongs_to_many :spells

  belongs_to :house

  validates :fname, :lname, presence: true

  def read_directions
    puts 'never'
  end

  def full_name
    fname + " " + lname
  end

end


