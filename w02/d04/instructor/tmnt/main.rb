require 'pry'

require_relative 'classes/human'
require_relative 'classes/turtle'
require_relative 'modules/ninjable'
require_relative 'modules/mutatable'
require_relative 'modules/teenageable'
require_relative 'modules/bonus_modules/leaderable'
require_relative 'modules/bonus_modules/bitterable'

leo      = Turtle.new
leo.name = "Leonardo"
binding.pry

raph      = Turtle.new
raph.name = "Raphael"

mike      = Turtle.new
mike.name = "Michaelangelo"

don      = Turtle.new
don.name = "Donatello"

leo.extend(Leaderable)
raph.extend(Bitterable)

