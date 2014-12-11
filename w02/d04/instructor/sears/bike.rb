class Bike < Product

  attr_reader :gear_count, :tire_diameter

  def initialize(price, brand, gear_count, tire_diameter)
     super(price, brand)
     @gear_count = gear_count
     @tire_diameter = tire_diameter
  end

end
