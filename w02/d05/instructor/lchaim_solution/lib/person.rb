require_relative 'abilities/schoolable'
require_relative 'abilities/employable'
require_relative 'abilities/datable'
require_relative 'abilities/committable'

class Person
  attr_accessor :name, :brain
  attr_reader :age

  def initialize(name = nil)
    @alive = true
    @age = 0
    @brain = {
      memories: [],
      loved_ones: [],
      interests: []
    }
    @is_alive = true
    @name = name
  end

  def alive?
    @is_alive
  end

  def age!
    @age += 1
    case @age
    when 4 # a person learns how to learn
      extend Abilities::Schoolable
    when 14 # a person should be able to `#work`.
      extend Abilities::Employable
    when 16 # a person can date another person.
      extend Abilities::Datable
    when 25..34 # At a random point between 25 and 34
      extend Abilities::Committable if rand(0..100) > 60
    when 35 # they will definitely become Committable
      extend Abilities::Committable unless self.respond_to?(:marry)
    end
  end

  def die!
    # When someone dies their `@alive` status goes to false
    @is_alive = false
    # and all their memories are erased.
    brain.each { |_key, value| value.clear }

    # If they're not alive all their methods should return nil

    # `instance_methods` Returns an array containing the names of the public
    # and protected instance methods in the receiver.
    # With an argument of `false` it turns only the methods on the receiver and
    # not it's superclass
    self.class.instance_methods(false).each do |method|
      next if method == :alive?
      # Defines a method in the receiver
      # In this case it's overriding the original methods by name
      # This block is what each defined method will return
      define_singleton_method(method) { nil }
    end
  end

  def love!(person)
    brain[:loved_ones] << person
  end

  def loves?(person)
    brain[:loved_ones].include?(person)
  end

  def memories
    brain[:memories] if can_remember?
  end

  def can_remember?
    age >= 3
  end

  def remember(event)
    memory = { age: age, memory: event }
    memories << memory if can_remember?
  end

  def recall(partial_memory)
    return unless can_remember?
    memories.select do |memory|
      memory[:memory].include?(partial_memory)
    end
  end

  def recall?(partial_memory)
    recall(partial_memory).any?
  end

  def get_interested_in(thing)
    return unless can_get_interested?
    interests << thing
    remember("got interested in #{thing}")
  end

  def can_get_interested?
    age > 3
  end

  def interested_in?(thing)
    brain[:interests].include?(thing)
  end

  def interests
    brain[:interests]
  end
end
