class Teacher < Human

  def initialize(name, age='n/a')
    super(name, age)
  end


  def speak(x)
    puts "#{x} (said the teacher in a soothing voice)"
  end

  def teach(y)
    speak(y)
    puts "(checks the class for understanding)"
  end
end
