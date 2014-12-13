class Teacher < Human

  def speak(x)
    puts("#{x} said the teacher in a soothing voice.")
  end

  def teach(text)
    speak(text)
    puts("checks for understanding")
  end
end
