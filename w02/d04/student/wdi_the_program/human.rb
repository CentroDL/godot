class Human

  def initialize(name)
    @name = name
    @walks_upright = true
  end

  def speak(x)
    puts x
  end

  def shout(y)
    puts("#{y} RAWRRRRR!!!")
  end

  def walks_upright?
    @walks_upright
  end

end
