require 'date'

class Vehicle

  attr_accessor:passengers,:location_in_time
  attr_reader:description,:capacity,:location

  def initialize(d,c,l)
    @description = d
    @capacity    = c
    @location    = l
    @location_in_time = Date.today
    @passengers  = []
  end

  def add_passenger(name)
    passengers << name
  end

  def in_danger?
    passengers.count > @capacity
  end

  def go_to(location)
    if passengers.count == 0
      return "This #{@description} is empty!"
    else
      @location = location
      return "This #{@description} is off to #{@location}"
    end
  end

end
