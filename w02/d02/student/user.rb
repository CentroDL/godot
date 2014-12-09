#CREATING MY FIRST CLASS
class User

# A setter method sets an attribute (@attribute) of a User object to whatever value gets passed as an argument(x)
  def set_name=(name)
    @name = name
  end

  def set_email=(email)
    @email = email
  end

  def set_age=(age)
    @age = age
  end

  def set_gender=(gender)
    @gender = gender
  end
# /////////////END OF SETTER METHODS//////////////////////
# A getter method retrieves an attribute (@attribute) of a user and outputs it.
  def get_name
    return "Name: " + @name
  end

  def get_email
    return "Email: " + @email
  end

  def get_age
    return "Age: " + @age.to_s
  end

  def get_gender
    return "Gender: " + @gender
  end
# ///////////END OF GETTER METHODS/////////////////////
end

first_user = User.new
first_user.set_name = ("Travis")
first_user.set_email = ("@travtavta")
first_user.set_age = 19
first_user.set_gender = ("female")
puts(first_user.get_name)
puts(first_user.get_email)
puts(first_user.get_age)
puts(first_user.get_gender)

second_user = User.new
second_user.set_name = ("Dain")
second_user.set_age = 42
second_user.set_email = ("@gatticasnarky")
second_user.set_gender = ("male")
puts(second_user.get_name)
puts(second_user.get_email)
puts(second_user.get_age)
puts(second_user.get_gender)
