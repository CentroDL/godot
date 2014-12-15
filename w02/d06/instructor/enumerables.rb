require 'pry'

arr = [
  "patricio",
  "dflip"
]

upcased_names = arr.map do |y|
  y.upcase
end

short_names = arr.select do |x|
  x.length < 6
end

 binding.pry

 class Celebrity < Human
   def initialize
     @solved = false
   end

   def setup
     solved
   end

   def take_out_trash
     super
     @tired = true
   end

   def self.parse

   end

 end
