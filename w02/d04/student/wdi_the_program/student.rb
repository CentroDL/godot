class Student < Human

  attr_accessor:homework

  def initialize(name)
    super
    @homework = []
  end

  def do_homework(work)
    @homework.push(work)
    speak("I gotta do WORK")
  end

end
