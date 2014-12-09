#Creating A Student Class
class Student
#///////////////CREATING SETTER METHODS////////////
  def set_first_name=(name)
    @first_name = name
  end

  def set_last_name=(name)
    @last_name = name
  end

  def set_prior_occupation= (job)
    @prior_occupation = job
  end
# /////////////END OF SETTER METHODS///////////////
# ////////////CREATING GETTER METHODS//////////////
  def get_first_name
    return "First Name: " + @first_name
  end

  def get_last_name
    return "Last Name: " + @last_name
  end

  def get_prior_occupation
    return "Prior Occupation: " + @prior_occupation
  end
#//////////////END OF GETTER METHODS///////////////
end
# ////////////END OF CLASS DEFINITION//////////////
# /////////CREATES STUDENT OUTPUT METHOD///////////
def output_user (student)
  puts(student.get_first_name)
  puts(student.get_last_name)
  puts(student.get_prior_occupation)
end
# //////////ENDS STUDENT OUTPUT METHOD/////////////
first_student = Student.new
first_student.set_first_name= ("Chadd")
first_student.set_last_name= ("Clairmont")
first_student.set_prior_occupation= ("Scuba Dive Instructor")
output_user(first_student)

second_student = Student.new
second_student.set_first_name= ("Kamari")
second_student.set_last_name= ("Aykes")
second_student.set_prior_occupation= ("Brain Scientist")
output_user(second_student)

