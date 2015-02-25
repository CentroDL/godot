require 'json'

class WaterBottle
  attr_reader :brand, :capacity, :measure

  def initialize(brand, capacity)
    @brand = brand
    @capacity = capacity
    @measure = 0
  end

  def empty?
    @measure == 0
  end

  def fill
    @measure = capacity
  end

  def squirt
    empty? ? false : @measure -= 4
  end

  def to_json
    return {brand: @brand,
      capactiy: @capacity,
      measure: @measure }.to_json
  end

end
