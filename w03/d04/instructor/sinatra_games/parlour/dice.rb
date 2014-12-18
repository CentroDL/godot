module Parlour
  class Dice
    attr_reader :array_dice

    def initialize(array_of_dice_numbers)
      @array_dice = array_of_dice_numbers
    end

    def roll
      # @array_dice.map do |die|
      #   (1..die).to_a.sample
      # end

      rolled_dice = []
      @array_dice.each do |die|
        rolled_dice.push((1..die).to_a.sample)
      end
      rolled_dice
    end

    def roll_and_sum
      sum = 0
      @array_dice.each do |die|
        sum += (1..die).to_a.sample
      end
      sum

      # @array_dice.reduce(:+)
    end

    def self.roll(number_of_sides)
      (1..number_of_sides).to_a.sample
    end
  end
end
