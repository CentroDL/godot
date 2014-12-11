class Student
  attr_reader   :name, :birthdate, :sleeping
  attr_accessor :shower_song

  def initialize(name, birthdate)
    @name        = name
    @birthdate   = birthdate
    @shower_song = "Taylor Swift's 'Blank Spaces'"
    @sleeping    = false
  end

  def eat(mealtime, food_item)
    "That was good!"
  end

  def nap
    @sleeping = true
    "Zzzzzzzzzz"
  end

  def wake_up
    @sleeping = false
    "Wha-? I'm up."
  end

  def is_sleeping?
    sleeping
  end

  def print
    # you guys know almost all of this, except for .send, so take a look
    # it seems very complicated, but you can break it down!
    instance_variables.map {|var| "#{var}: #{self.send(var[1..-1])}"}.join(", ")

    # simpler:
    # "@name: #{name}, @birthdate: #{birthdate}, @shower_song: #{shower_song}" + \
    # ", @sleeping: #{is_sleeping?}"
  end
end
