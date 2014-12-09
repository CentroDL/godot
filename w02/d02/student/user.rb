class User

  def name=(x)
    @name = x
  end

  def name
    @name
  end

# Within your User class definition, write a getter and setter method for an age attribute.
  def age=(n)
    @age = n
  end

  def age
    @age
  end

# Great, now write a getter and setter method for an gender attribute.
  def gender=(g)
    @gender = g
  end

  def gender
    @gender
  end

end

first_user = User.new
first_user.name=("Travis")
first_user.age=(30)
first_user.gender=("Male")
puts first_user
puts first_user.name
puts first_user.age
puts first_user.gender

second_user = User.new
puts second_user
second_user.name=("Dain")
puts second_user.name
