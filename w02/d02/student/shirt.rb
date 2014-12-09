require 'pry'

class Shirt

  # attr_reader :size, :color, :text
  # attr_writer :size, :color, :text
  attr_accessor :size, :color, :text

  def initialize(size, color, text)
    @size = size
    @color = color
    @text = text
  end

  def output
    puts "The size of this shirt is #{@size}"
  end

end


pearl_jam_t = Shirt.new("extra-large", "nicely faded black", "Yield Tour 1998")

# instantiate another new shirt, hipster_plaid which is size medium, the color red, says "NO LOGO" on the back
hipster_plaid = Shirt.new('medium', 'red', "NO LOGO")
# instantiate another new shirt, david_beckham_jersey which is large, white, and has the text "Beckham"
david_beckham_jersey = Shirt.new("large", "white", "Beckham")

pearl_jam_t.output
hipster_plaid.output
david_beckham_jersey.output
binding.pry
