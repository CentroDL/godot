require 'pry'
require_relative 'tenant'

class Apartment
#   unit
# num_beds
# num_baths
# tenants (the collection of people renting the apartment)
  attr_accessor :num_beds, :num_baths, :tenants #writes getters and setters

  def initialize(b, n, baths)
    @unit = b
    @num_beds = n
    @num_baths = baths
    @tenants = []
  end

# An apartment's price shouldrub be dynamically calculated based on the number of beds
#($1000 per bed) and the number of bathrooms ($500 per bathroom).
  def price
    # puts "$#{(num_beds*1000) + (num_baths*500)}"
    (num_beds*1000) + (num_baths*500)
  end

  #returns true if only one bedroom
  def studio?
    puts num_beds == 1
  end

  def move_in(tenant)
    if tenants.size >= num_beds
      puts "We're full! #{tenant.f_name} #{tenant.l_name} can't move in!"
    else
      tenants.push(tenant)
    end
  end

  def empty?
    puts tenants.empty?
    #puts tenants.length == 0
  end

  def full?
    # puts tenants.size >= num_beds
    tenants.size >= num_beds
  end

end#Apartment

# a1 = Apartment.new( "B", 10, 10 )
# a1.price
# a2 = Apartment.new("A", 2, 1)
# a2.price #=> "$2500"

# a1 = Apartment.new("B", 2, 1)
# a2 = Apartment.new("A", 1, 1)
# a1.studio? #=> false
# a2.studio? #=> true
# a2.move_in("brian")




# a1 = Apartment.new("B", 1, 1)
# p1 = Tenant.new("Fran", "Kubelik", "female", "May 8, 1935")
# a1.move_in(p1)
# puts a1.tenants          #=> [#<Tenant:0x01>]
#                     #   The above means an array
#                     #   of Tenant instances!
# puts a1.tenants.class    #=> Array < Object
# puts a1.tenants[0].class #=> Tenant < Object
# puts a1.tenants.size

# a1 = Apartment.new("B", 1, 1)
# a1.empty? #=> true
# p1 = Tenant.new("Fran", "Kubelik", "female", "May 8, 1935")
# a1.move_in(p1)
# a1.empty? #=> false

# a2 = Apartment.new("B", 2, 1)
# p1 = Tenant.new("Al", "Kirkeby", "male", "January 23, 1949")
# p2 = Tenant.new("Karl", "Matuschka", "male", "June 27, 1949")
# a2.empty? #=> true
# a2.full?  #=> false
# a2.move_in(p1)
# a2.empty? #=> false
# a2.full?  #=> false
# # binding.pry
# a2.move_in(p2)
# a2.full?  #=> true

# p1 = Tenant.new("Mildred", "Dreyfuss", "female", "July 18, 1942")
# p2 = Tenant.new("Jeff", "Sheldrake", "male", "November 18, 1941")
# p3 = Tenant.new("Joe", "Dobisch", "male", "May 17, 1939")
# a3 = Apartment.new("F", 2, 1)
# a3.move_in(p1)
# a3.move_in(p2)
# a3.full?        #=> true
# a3.move_in(p3)  #=> "We're full! Joe Dobisch can't move in"
# puts a3.tenants.size #=> 2









