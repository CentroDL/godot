#Creating a Main to test the other files
require_relative 'apartment.rb'
require_relative 'tenant.rb'

#//////TESTING APARTMENT FILE/////////////////
# a1 = Apartment.new("B",2,1)
# puts("unit #{a1.unit} has #{a1.num_beds} bed(s) and #{a1.num_baths} bath(s).")
# puts("Apartment #{a1.unit} cost $#{a1.apt_price}")
# puts(a1.studio?)

# a2 = Apartment.new("A",1,2)
# puts("Apartment #{a2.unit} cost $#{a2.apt_price}")
# puts(a2.studio?)

# #//////TESTING TENANT FILE////////////////////
# p1 = Tenant.new("Calvin","Clifford","December 21, 1929","male",)
# p1.nickname = "Bud"
# p1.occupation = "Office Drone"

# puts(p1.full_name)

# puts(a2.full?)
# a2.move_in(p1)
# puts(a2.full?)

p1 = Tenant.new("Mildred", "Dreyfuss", "female", "July 18, 1942")
p2 = Tenant.new("Jeff", "Sheldrake", "male", "November 18, 1941")
p3 = Tenant.new("Joe", "Dobisch", "male", "May 17, 1939")
a3 = Apartment.new("F", 2, 1)
a3.move_in(p1)
a3.move_in(p2)
puts(a3.full?)        #=> true
puts(a3.move_in(p3))  #=> "We're full! Joe Dobisch can't move in"
puts(a3.tenants.size) #=> 2
