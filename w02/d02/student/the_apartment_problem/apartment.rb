#Creates the Apartment Class
class Apartment

  attr_accessor :unit,:num_beds,:num_baths,:tenant

  def initialize(u,nbe,nba,t=[])
    @unit      = u
    @num_beds  = nbe
    @num_baths = nba
    @tenant    = t
  end

  def apt_price
    return (@num_beds*1000) + (@num_baths*500)
  end

  def studio?
    if @num_beds <= 0
      return true
    else
      return false
    end
  end

end

a1 = Apartment.new("B",2,1)
puts("unit #{a1.unit} has #{a1.num_beds} bed(s) and #{a1.num_baths} bath(s).")
puts("Apartment #{a1.unit} cost $#{a1.apt_price}")

a2 = Apartment.new("A",1,2)
puts("Apartment #{a2.unit} cost $#{a2.apt_price}")
