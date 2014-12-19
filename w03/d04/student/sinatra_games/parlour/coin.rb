require 'sinatra/base'
module Parlour

  class Coin
    def self.flip
      ["heads","tails"].sample
    end
  end#coin

  class Server < Sinatra::Base

    get ('/coin_toss') do
      @guess = params[:guess]
      @roll = Parlour::Coin.flip

      render(:erb, :coin_toss, {layout: :template})
    end#'/coin_toss'

    get ('/dice_roll') do
      @six_roll = Parlour::Dice.roll(6)
      @number_of_dice = Array.new(params[:number_of_dice].to_i, 6)
      @total = params[:total]

      render(:erb, :dice, {layout: :template})
    end# '/dice_roll'

  end#Server

  class Dice

    attr_reader :outcomes, :sides_arr

    def self.roll(value)
      rand(1..value)
    end

    def initialize(arr)
      @sides_arr = arr
      @outcomes = []
    end

    def roll
      @sides_arr.each { |n| @outcomes.push( Dice.roll(n) ) }
    end

    def roll_and_sum
      roll
      @outcomes.inject(:+)
    end
  end#Dice

end#parlour


# 100.times { puts Parlour::Coin.flip }
