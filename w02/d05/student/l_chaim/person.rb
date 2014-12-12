class Person
  def alive?
    true
  end

  def name
    @name
  end

  def age
    @age ||= 0
  end

  def name=(name)
    @name = name
  end

  def age!
    @age += 1
    case age
    when 3
      @memories = []
    end
  end

  def brain
    {
      :thoughts   => [],
      :loved_ones => [],
      :interests  => []
    }
  end

  def memories
    @memories ||= nil
  end
end