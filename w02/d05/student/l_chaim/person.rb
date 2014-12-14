require_relative 'modules/schoolable'
require_relative 'modules/employable'

class Person
  attr_accessor :name, :age, :brain

  def initialize
    @alive = true
    @age = 0
    @brain = {:memories => [], :loved_ones => [], :interests => [], :skills => []}
  end

  def remember(memory)
    if @age >= 3
      inserted_memory = { :age => age, :memory => memory}
      brain[:memories].push(inserted_memory)
      insert_interest_to_memory = brain[:interests => []]
      brain[:memories].push(insert_interest_to_memory)
    else
      nil
    end
  end

  def get_interested_in(interest)
    if age > 3  #line 38
      brain[:interests].push(interest)
      remember("got interested in #{interest}")
    else
      true
    end
  end

  def interests
    if age >= 3
      brain[:interests]
    else
      false
    end
  end

  def interested_in?(interest)
    brain[:interests].include?(interest)
  end

  def memories
    if age >= 3
      brain[:memories]
    else
      nil
    end
  end

  def age!
    @age +=1
    if @age == 4
      extend Schoolable
      # @age
    end
    if @age == 14
      extend Employable
      # @age
    end
    @age
  end

  def alive?
    @alive
  end

  def learn_to(thing)
    brain[:skills].push(thing)
    remember("learned how to #{thing}")
  end

  def responds_to?(thing)
    self.respond_to?(thing)
  end



  def knows_how_to?(thing)
    brain[:skills].include? thing.to_s
  end

   def included_modules
    self.singleton_class.included_modules
    #i feel like i lucked out with this one. would love to know if this was the right approach
  end

  def superclass
    self.class.superclass
  end


end#Person
