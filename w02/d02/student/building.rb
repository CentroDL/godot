require_relative 'apartment'

class Building

  attr_accessor :address, :floors, :apartments

  def initialize(addy, stories)
    @address = addy
    @floors = stories
    @apartments = []
  end

  def add

  end

end

# b1 = Building.new("208 Leonard St", 3)
# b1.apartments #=> []

a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a3 = Apartment.new("A", 1, 1)

# Specifiy the floor and apartment object
b1.add(1, a1)
b1.add(1, a2)
b1.add(2, a3)
