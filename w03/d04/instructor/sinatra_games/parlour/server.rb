module Parlour
  class Server < Sinatra::Base
    get("/coin_toss") do
        Parlour::Coin.flip
    end
  end
end
