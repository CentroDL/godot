require 'pry'
require_relative 'vehicle'
require_relative 'train'
require_relative 'skateboard'
require_relative 'car'

binding.pry
blades = Vehicle.new('roller blades', 1, 'Central Park')
blades.description #=> "roller blades"
blades.capacity    #=> 1
blades.location    #=> "Central Park"
blades.passengers  #=> []
blades.add_passenger("Dad")
blades.passengers  #=> ["Dad"]

blades.description = "rollah bladez" #=> NoMethodError
blades.capacity    = 2               #=> NoMethodError
blades.location    = "Central Perk"  #=> NoMethodError
