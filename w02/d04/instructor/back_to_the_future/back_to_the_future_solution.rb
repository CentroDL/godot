require_relative './time_travelable'
require 'pry'

class Vehicle
  attr_reader :description, :passengers, :location, :capacity
  attr_accessor :location_in_time

  def initialize(description, capacity, location)
    @description = description
    @capacity    = capacity
    @passengers  = []
    @location    = location
    @location_in_time = Date.today
  end

  # def decription
  #   @description
  # end

  # def passengers
  #   @passengers
  # end

  # def location
  #   @location
  # end

  # def capacity
  #   @capacity
  # end

  # def location_in_time
  #   @location_in_time
  # end

  # def location_in_time=(location_in_time)
  #   @location_in_time = location_in_time
  # end

  def in_danger?
    capacity < number_of_passengers
  end

  def number_of_passengers
    passengers.length
  end

  def there_are_passengers
    number_of_passengers > 0
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def go_to(location)
    return empty_message unless there_are_passengers
    @location = location
    "The #{description} is off to #{location}!"
  end

  def empty_message
    "This #{description} is empty!"
  end
end

class Train < Vehicle
  def pull_the_rope
    'Woo woooo!'
  end
end

class Skateboard < Vehicle
  attr_writer :goofy

  def initialize(description, location)
    super(description, 1, location)
    @goofy = false
  end

  def grind
    there_are_passengers ? 'khkhkhkhkh klunck khkh' : empty_message
  end

  def kickflip
    there_are_passengers ? 'Rad! I can kickflip!' : empty_message
  end

  def goofy?
    @goofy
  end

  # def goofy=(goofy)
  #   @goofy = goofy
  # end

  def description
    "#{super} skateboard"
  end
end

class Bicycle < Vehicle
  def initialize(description, location)
    super(description, 2, location)
  end

  def add_passenger(passenger)
    if capacity == number_of_passengers
      return 'There are already too many people on this bike!'
    end
    super(passenger)
  end

  def in_danger?
    number_of_passengers == 2
  end

  def go_to(location)
    (in_danger? && (rand < 0.5)) ? crash! : super(location)
  end

  def crash!
    passengers.clear
    'Crash!!'
  end
end

class Car < Vehicle
  attr_reader :year_produced, :make, :model
  attr_accessor :color

  def initialize(capacity, year_produced, make, model, color, location)
    super('', capacity, location)
    @year_produced = year_produced
    @make          = make
    @model         = model
    @color         = color
    @fuel          = false
  end

  def fuel?
    @fuel
  end

  def refuel
    fuel? ? 'No need to top off.' : @fuel = true
  end

  def description
    "#{color} #{year_produced} #{make} #{model}"
  end

  def go_to(location)
    if fuel?
      @fuel = false
      super(location)
    else
      "This #{description} has no fuel!"
    end
  end
end

delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
delorean.add_passenger('Marty McFly')
delorean.refuel
delorean.extend(TimeTravelable)

delorean.go_back_in_time(33, 11, 14)

module Flyable
  def fly_to(location)
    go_to(location)
    "Look at me now, ma! I'm flying to #{location}!"
  end

  def flies?
    true
  end
end

delorean.extend(Flyable)
hoverboard = Skateboard.new('Tannen Industries', 'Hill Valley').extend(Flyable)
hoverboard.location_in_time = Date.new(2012, 8, 1)
steam_locomotive = Train.new('Steam Locomotive', 15, 'Wild West')
time_traveling_steam_locomotive = steam_locomotive.extend(TimeTravelable)
amazing_steam_locomotive = time_traveling_steam_locomotive.extend(Flyable)

class Plane < Vehicle
  include Flyable
end

my_jet = Plane.new('G6', 12, 'Greenwich')
my_jet.add_passenger('Pilot')
my_jet.add_passenger('PJ')
my_jet.add_passenger('Assistant')
my_jet.fly_to('Cabo')
