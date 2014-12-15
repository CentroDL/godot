class Turtle

  # provides every instance of Turtle with the methods in these modules
  include Teenageable
  include Mutatable
  include Ninjable

  attr_accessor :name

  def initialize
    @has_shell = true
  end

  def has_shell?
    @has_shell
  end

end
