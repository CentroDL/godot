# define a method called "adds_five_to" that takes a single argument and returns the sum of whatever gets passed in as an argument and five.
require 'pry'

def adds_five_to(x)
  x.to_i + 5
end

eleven = adds_five_to("6")

binding.pry
