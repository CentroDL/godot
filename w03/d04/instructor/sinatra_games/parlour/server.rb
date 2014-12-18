module Parlour
  class Server < Sinatra::Base

    enable :logging

    get("/coin_toss") do
        @result = Parlour::Coin.flip
        logger.info(@result)
        render(:erb, :coin_toss)
    end
  end
end
