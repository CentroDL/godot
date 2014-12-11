require 'date'

class Vehicle

  attr_reader :description, :capacity, :location, :passengers
  attr_accessor :location_in_time

  def initialize(desc, cap, loc)
    @description = desc
    @capacity = cap
    @location = loc
    @passengers = []
    @location_in_time = Date.today
  end

  def add_passenger(pass)
    passengers.push(pass)
  end

  def in_danger?
    return passengers.length > capacity
  end

  def go_to(loc)
    if passengers.length >= 1
      @location = loc
      "The #{description} is off to #{loc}!"
    else
      "This #{description} is empty!"
    end
  end#go_to

end
