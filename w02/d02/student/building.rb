require_relative 'apartment'

class Building

  attr_accessor :address, :floors, :apartments

  def initialize(addy, stories)
    @address = addy
    @apartments = []#has to make new value
    # @floors = Array.new(stories, apartments)
    @floors = Array.new(stories, Array.new() )
  end

  def add(floor, apt)
    puts "added apt"
    floors[floor-1].push(apt)
  end

end

b1 = Building.new("208 Leonard St", 3)
puts b1.apartments #=> []

a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a3 = Apartment.new("A", 1, 1)

# Specifiy the floor and apartment object
# b1.add(1, a1)
# b1.add(1, a2)
# b1.add(2, a3)
binding.pry
