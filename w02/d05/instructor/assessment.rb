animals = ["shark", "moose", "bald eagle"]

animals.each { |a| $stdout.puts(a.upcase) }

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

evens = numbers.select { |n| n.even? }

stevens = numbers.map do |n|
  msg = "#{n} stevens"
  msg.upcase
end

class Parser
  attr_accessor :delimiter
  def initialize(delim)
    @delimiter = delim
  end

  def split(words)
    words.split(@delimiter)
  end

  def self.split(words, delimiter)
    words.split(delimiter)
  end
end

p1 = Parser.new("*")
p1.split("Hi*Ho")

Parser.split("Hi=Ho", "=")

class Puppet
  def initialize(name)
    $stdout.puts("behold a puppet")
    @name = name
  end
end

class Muppet < Puppet
  def initialize(name, voiced_by)
    super(name)
    @voiced_by = voiced_by
  end
end

# local variable
rose = "red"

# instance variable
@flower = 2

# class variable
@@street  = 3.1

# global variable
$frogs = :money


module DanceMoves
  def break_dance
    "get down!"
  end
  def salsa
    "get salsain'"
  end
end

module Karate
  def hiya
    "skull crack!"
  end
end

class Person
  # Adds module methods
  include DanceMoves
  def initialize(name)
    @name = name
  end
end

p1 = Person.new("phil")
p2 = Person.new("dain")

p1.break_dance #=> it works!
p2.break_dance #=> it works!

# add module methods to an instance
p1.extend(Karate)

p1.hiya  #=> it works!
p2.hiya  #=> this breaks!
