class Bike < Product

  def initialize(p, b, gear, dia)
    super(p,b)
    @gear_count = gear
    @tire_diameter = dia
    #gear_count and tire_diameter
  end
end
