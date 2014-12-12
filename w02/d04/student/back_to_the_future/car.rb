require 'date'
require_relative 'modules/time_travelable.rb'

class Car < Vehicle

  attr_accessor :color, :location_in_time
  attr_reader :fuel

  def initialize(capacity, year_produced, make, model, color, location)
    description = "#{color} #{year_produced} #{make} #{model}"
    super(description, capacity, location)
    @year_produced = year_produced
    @make = make
    @model = model
    @color = color
    @fuel = false
    @location_in_time = Date.today
  end

  def refuel
    if !fuel
      @fuel = true
      fuel
    else
      $stderr.puts "No need to top off!"
    end
  end

 def go_to(place)
  if !fuel
    fuel
  else
    @fuel = false
    super(place)
  end
 end

end#car



