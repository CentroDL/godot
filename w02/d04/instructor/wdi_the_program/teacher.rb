class Teacher < Human

  def speak(x)
    puts "#{x} (said the teacher in a soothing voice)"
  end

  def teach(y)
    speak(y)
    puts "(checks for understanding and redirects if necessary)"
  end

end

