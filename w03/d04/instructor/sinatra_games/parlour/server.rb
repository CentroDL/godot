module Parlour
  class Server < Sinatra::Base

    enable :logging

    get("/coin_toss") do
        @guess = params[:guess]
        @result = Parlour::Coin.flip

        if @guess == @result
          @message = "Now we're playin' baby!"
        else
          @message = "Wrong! Better luck next time, Kid!"
        end

        logger.info(@result)
        render(:erb, :coin_toss)
    end

    get("/dice_roll") do
      # params[:number_of_dice] = params[:number_of_dice] || 0
      # params[:number_of_dice] ||= 0
      if params[:number_of_dice]
        @number_of_dice = params[:number_of_dice].to_i
        @dice = Parlour::Dice.new(Array.new(@number_of_dice) { 6 })

        @result = @dice.roll
      else
        @result = Dice.roll(6)
      end

      render(:erb, :dice_roll)
    end
  end
end
