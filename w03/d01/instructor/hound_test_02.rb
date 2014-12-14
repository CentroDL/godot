class Apartment
#  units
#  num_beds
# tenants
# #writes getters and setters option 2=>
attr_accessor :num_beds, :num_baths, :tenants
  def initialize (a,b,c)
   @units =a
   @num_beds = b
   @num_baths= c
   @tenants = []
  end

    def price
    $stdout.puts("$#{(@num_beds * 1000) +(@num_baths*500)}")
    end

   def studio?
    $stdout.puts num_beds == 1
   end

   def move_in (t)
    tenants.push(t)
  end

    def full?
      $stdout.puts num_tenants == num_beds
    end

end


#first instace method is always call outside the class
a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a1.price #=> false
a2.price #=> true
