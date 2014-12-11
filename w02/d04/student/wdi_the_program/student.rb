class Student < Human

  attr_reader :homeworks

  def initialize(name, age)
    super(name, age)
    @homeworks = []
  end

  def do_homework(z)
    homeworks.push(z)
  end
end
