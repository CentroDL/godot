require 'pry'
require_relative 'vehicle'
require_relative 'car'
require_relative 'train'
require_relative 'Skateboard'
require_relative 'car'

v1 = Vehicle.new('horse and buggy', 4, 'Burton, OH')
puts v1.description


delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
binding.pry
delorean.extend(Time_Travelable)
delorean.add_passenger('Marty McFly')
delorean.refuel             #=> true
delorean.refuel             #=> true
delorean.go_to('the dance') #=> "You're now at the dance."
delorean.fuel
binding.pry
