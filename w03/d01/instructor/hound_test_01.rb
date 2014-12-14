require "pry"
class Person
  # include Schoolable

  def initialize
    @alive = true
    @name = nil
    @age = 0
    @brain = { :memories => [],
               :loved_ones => "mary",
               :interests => "sports",
    }
    @count = 0
    # @memory = []
  end

  attr_accessor :name
  attr_reader :age, :brain

  def alive?
    @alive
  end


  def age!
    @count += 1
    @age= @count
    if @age >= 4
      extend Schoolable
      # binding.pry
      # @age
    end
    @age
  end

 #age: 3, memory: "going to the bathroom under the piano"
  def remember(memory)

    @brain[:memories].push({ :age => @age, :memory => memory })
  end

  def memories
    if @age<3
      nil
    else
      @brain[:memories]
    end
  end

  def interests
    if @age <= 3
      []
    else
      @brain[:interests]
    end
  end

  def get_interested_in(interest)
    remember("got interested in " + interest)
    @brain[:interests] = interest
  end

  def interested_in?(interest)
    @brain[:interests] == interest
  end



  # def brain
  #   @brain
  # end


end
