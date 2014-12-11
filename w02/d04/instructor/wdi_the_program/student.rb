class Student < Human

  attr_reader :homeworks

  def initialize(name, age)
    puts "I occur before super gets called"
    super(name, age) # tells ruby to go to the superclass (Human), and run the code found in the method of the same name
    puts "I occur after super gets called"
    @homeworks = []
  end

  def do_homework(x)
    homeworks << x
  end
end
