class Bike < Product

  attr_accessor:gear_count,:tire_diameter

  def initialize(price,brand,gc,td)
    super(price,brand)
    @gear_count = gc
    @tire_diameter = td
  end

end
