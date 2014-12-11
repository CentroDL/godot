require 'pry'

require_relative 'modules/teenageable'
require_relative 'modules/ninjable'
require_relative 'modules/mutatable'
require_relative 'modules/bonus_modules/anthropomorphable'
require_relative 'modules/bonus_modules/leaderable'
require_relative 'modules/bonus_modules/bitterable'

class Turtle
  include Anthropomorphable
  include Mutatable
  include Teenageable
  include Ninjable

  def has_shell?
    true
  end
end

leo      = Turtle.new
leo.name = "Leonardo"
leo.hate! "Inefficiency"

raph      = Turtle.new
raph.name = "Raphael"

mike      = Turtle.new
mike.name = "Michaelangelo"

don      = Turtle.new
don.name = "Donatello"

tmnt = {
  :leo  => leo,
  :raph => raph,
  :mike => mike,
  :don  => don
}

tmnt.each_value {|turtle| turtle.love! "Master Splinter"}


class Person
  include Teenageable
end

Person.new.teen_speak "let's go to McDonald's"
Person.new.sass "you make your bedroom"

class Dog
  include Mutatable
end

puts Dog.new.height
puts Dog.new.strength

class Parrot
  include Ninjable
end

puts Ninjable::WEAPONS
puts Parrot.new.weapon

p = Parrot.new
p.weapon = "throwing stars"
puts p.weapon
puts p.has_weapon?("gun")
p.surprise_take_down!


leo.extend Leaderable
raph.extend Bitterable

binding.pry
