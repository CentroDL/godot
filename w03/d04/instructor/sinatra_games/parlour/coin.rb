module Parlour
  class Coin
    def self.flip # class method, so self.!
      ["heads","tails"].sample
    end
  end
end
