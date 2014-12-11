class Car < Vehicle

  attr_accessor:color
  attr_reader:fuel

  def initialize(ca,yp,ma,mo,co,l)
    description = "#{co} #{yp} #{ma} #{mo}"
    super(description,ca,l)
    @year_produced = yp
    @make = ma
    @model = mo
    @color = co
    @passengers = []
    @fuel = false
  end

  def refuel
    if @fuel == false
      @fuel = true
    else
      $stderr.puts "No need to top off!"
    end
  end

  def go_to(location)
    if passengers.count == 0
      return "This #{@description} is empty!"
    elsif @fuel == false
      return "The gas tank is empty!"
    else
      @location = location
      @fuel = false
       return "This #{@description} is off to #{@location}"
     end
   end

end
