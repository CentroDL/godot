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
  "Travos Vander Hoop",
  "travis@yourfriendtravis.com",
  1009,
  "male with a sprinkle of female"
)

puts first_user.tweets
# first_user.set_name=("Travis")
# first_user.email=("travis@yourfriendtravis.com")
# first_user.age = 1009
# first_user.gender="male with a sprinkle of female"


puts "The first user's name is #{first_user.retrieve_name}. His/her email is #{first_user.email}. His/her age is #{first_user.age}."

puts "The first user's gender is #{first_user.gender}."

# second_user = User.new
# second_user.set_name="Dain"
# second_user.email=("carver403@gmail.com")
# second_user.age=(20017)
# second_user.gender=("male")
# puts "The seconds user's name is #{second_user.retrieve_name}. His/her email is #{second_user.email}, and he/she is #{second_user.age}."

# puts "The second user's gender is #{second_user.gender}."
