require 'pry'

require_relative 'modules/teenageable'
require_relative 'modules/ninjable'
require_relative 'modules/mutatable'
require_relative 'classes/human'
require_relative 'classes/turtle'

leo      = Turtle.new
leo.name = "Leonardo"

raph      = Turtle.new
raph.name = "Raphael"

foot_soldier_one = Human.new
foot_soldier_two = Human.new

foot_soldier_two.extend(Ninjable)
binding.pry
