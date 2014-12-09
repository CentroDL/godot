class Student

  def initialize(f="blank", l="blank", p="blank")
      @first_name = f
      @last_name = l
      @prior_occupation = p


  end

  def first_name=(x)
    @first_name=x
  end

  def first_name
    @first_name
  end

  def last_name=(x)
    @last_name=x
  end

  def last_name
    @last_name
  end

  def prior_occupation=(x)
    @prior_occupation=x
  end

  def prior_occupation
    @prior_occupation
  end

end

newGuy = Student.new
newGuy.first_name=("Patricio")
newGuy.last_name=("Calderon")
newGuy.prior_occupation=("Programmer")

puts "The student's name is #{newGuy.first_name} #{newGuy.last_name}, and he previously worked as a #{newGuy.prior_occupation}"

otherguy = Student.new("Dennis", "Liaw", "Dentist")
puts "The student's name is #{otherguy.first_name} #{otherguy.last_name}, and previously worked as a #{otherguy.prior_occupation}"
