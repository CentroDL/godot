class Student

  def first_name=(x)
    @first_name = x
  end

  def first_name
    @first_name
  end

  def last_name=(x)
    @last_name = x
  end

  def prior_occupation=(job)
    @prior_occupation = job
  end

  def prior_occupation
    @prior_occupation
  end

end

ryan_laszlo = Student.new
ryan_laszlo.first_name=("Ryan")
ryan_laszlo.prior_occupation=("Asset Management Man")

puts "The student's first name is #{ryan_laszlo.first_name} and his/her former job was as a #{ryan_laszlo.prior_occupation}"

aliya = Student.new
aliya.first_name=("Aliya")
aliya.prior_occupation=("Junior Dev")

puts "The next student's first name is #{aliya.first_name}, and her last job was as a #{aliya.prior_occupation}"


