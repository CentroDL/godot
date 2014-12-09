class User

  def initialize(x, y, z, a)
    @name   = x
    @email  = y
    @age    = z
    @gender = a
    @tweets = []
  end

  def tweets
    @tweets
  end
  # a setter method. this method sets an attribute (@name) of a User object to whatever value gets passed as an argument
  def set_name=(x)
    @name = x
  end

  def retrieve_name
    return @name
  end

  def email=(y)
    @email = y
  end

  def email
    return @email
  end

  def age=(z)
    @age = z
  end

  def age
    @age
  end

  def gender=(z)
    @gender = z
  end

  def gender
    @gender
  end

end

first_user = User.new(
  "Travis Vander Hoop",
  "travis@yourfriendtravis.com",
  1009,
  "male with a sprinkle of female"
)

second_user = User.new("Chadd Paul Clairmont", "pcac25@gmail.com", 24, "male")


puts "user's name is #{first_user.retrieve_name}"

first_user.set_name=("Travos")

puts "user's name is now #{first_user.retrieve_name}."
puts first_user.tweets


puts "The first user's name is #{first_user.retrieve_name}. His/her email is #{first_user.email}. His/her age is #{first_user.age}."

puts "The first user's gender is #{first_user.gender}."

