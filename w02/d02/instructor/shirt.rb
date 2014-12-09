class Shirt

  attr_accessor :size, :color, :text

  def initialize(x, y, z="(no text)")
    @size  = x
    @color = y
    @text  = z
  end

end

pearl_jam_tee = Shirt.new("XL", "a nicely faded black", "Yield Tour 1998")
puts pearl_jam_tee.size=("Medium")
puts "Oh, i love my #{pearl_jam_tee.size} sized shirt."


hipster_plaid = Shirt.new("medium", "red plaid")
hipster_plaid.color=("orange")

puts "My sweet hipster shirt is a size #{hipster_plaid.size}, is #{hipster_plaid.color}, and says, '#{hipster_plaid.text}'"



