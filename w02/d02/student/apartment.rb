class Apartment
#   unit
# num_beds
# num_baths
# tenants (the collection of people renting the apartment)
  attr_accessor :num_beds, :num_baths #writes getters and setters

  def initialize(b, n, baths )
    @unit = b
    @num_beds = n
    @num_baths = baths
    @tenants = []
  end

# An apartment's price should be dynamically calculated based on the number of beds
#($1000 per bed) and the number of bathrooms ($500 per bathroom).
  def price
    puts "$#{(num_beds*1000) + (num_baths*500)}"
  end

end

a1 = Apartment.new( "B", 5, 1 )
a1.price
a2 = Apartment.new("A", 2, 1)
a2.price #=> "$2500"


