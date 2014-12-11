class Human

  def initialize(name, age)
    @name = name
    @age = age
    @walks_upright = true
  end

  def speak(x)
    puts x
  end

  def shout(y)
    puts "#{(y.upcase!)}!"
  end

  def walks_upright?
    @walks_upright
  end

end
