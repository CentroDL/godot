require 'json'

class WaterBottle
  attr_reader :brand, :capacity, :amount

  def initialize(brand, capacity)
    @brand = brand
    @capacity = capacity
    @amount = 0
  end

  def empty?
    @amount <= 0
  end

  def fill
    @amount = @capacity
  end

  def measure
    @amount
  end

  def squirt
    if !empty?
      @amount -= 4
      4
    else
      false
    end
  end

  def to_json
    {brand: brand, capacity: capacity, amount: amount }.to_json
  end
end

