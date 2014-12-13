require 'pry'
require_relative 'vehicle'
require_relative 'car'
require_relative 'train'
require_relative 'Skateboard'
require_relative 'car'
require_relative 'plane'

v1 = Vehicle.new('horse and buggy', 4, 'Burton, OH')
puts v1.description


delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
delorean.extend(TimeTravelable)
delorean.extend(Flyable)

boeing_air_bus = Plane.new
boeing_air_bus.extend(Flyable)

my_sweet_deck = Skateboard.new("black and mean", "indo-china")
my_sweet_deck.extend(Flyable)

orient_express = Train.new('passenger train', 100, 'Istanbul')
orient_express.extend(Flyable)
binding.pry

