# create table students (
#   id serial PRIMARY KEY,
#   fname varchar NOT NULL,
#   lname varchar NOT NULL,
#   house_id integer REFERENCES houses(id)
# );

class Student < ActiveRecord::Base

  validates(:fname,{ presence: true })

  def read_directions
    "never!"
  end

  def full_name
    fname + " " + lname
  end
end
