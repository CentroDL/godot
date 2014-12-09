class Student

  def initialize(f_name, l_name, old_job)
    @first_name = f_name
    @last_name = l_name
    @prior_occupation = old_job
  end

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

ryan_laszlo = Student.new("Ryan", "Laszlo", "Asset Management Man")
ryan_laszlo.prior_occupation=("MC")

puts "The student's first name is #{ryan_laszlo.first_name} and his/her former job was as a #{ryan_laszlo.prior_occupation}"

aliya = Student.new("Aliya", "Scribner", "Junior Dev")

puts "The next student's first name is #{aliya.first_name}, and her last job was as a #{aliya.prior_occupation}"


