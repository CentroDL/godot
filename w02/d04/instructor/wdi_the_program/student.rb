class Student < Human

  attr_reader :homeworks

  def initialize
    @homeworks = []
  end

  def do_homework(x)
    homeworks << x
  end
end
