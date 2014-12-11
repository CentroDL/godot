require 'pry'
require_relative 'vehicle'
require_relative 'car'
require_relative 'train'

v1 = Vehicle.new('horse and buggy', 4, 'Burton, OH')
puts v1.description

# puts v1.go_to('the barn dance!')
# puts v1.location

# v1.add_passenger('Jacob Miller')
# v1.add_passenger('John Miller')
# v1.add_passenger('Isaac Miller')
# v1.add_passenger('Mark Yoder')
# puts v1.in_danger?
# #=> false
# puts v1.passengers
# #=> ['Jacob Miller','John Miller','Isaac Miller','Mark Yoder']
# v1.add_passenger('Sarah Hershberger')
# puts v1.in_danger?

# puts v1.go_to('the barn dance!')
# puts v1.location

orient_express = Train.new('passanger train',100,'Istanbul')
puts "Woo Woooo!" == orient_express.pull_the_rope

puts orient_express.go_to("yo mamma's house")
orient_express.add_passenger("Angy B")
puts orient_express.go_to("MT. Everest")


