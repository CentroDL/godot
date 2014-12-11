class Human

  def initialize(name, a)
    @name = name
    @age = a
    @walks_upright = true
  end

  def speak(x)
    puts x
  end

  def shout(y)
    puts "#{y.upcase}!"
  end

  def walks_upright?
    @walks_upright
  end

end
