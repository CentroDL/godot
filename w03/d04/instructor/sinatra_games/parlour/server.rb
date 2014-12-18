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
  end
end
