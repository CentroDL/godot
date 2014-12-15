require_relative '../male'

module Abilities
  module Reproducible
    def beget!
      if age > 19
        baby = [Male, Female].sample.new
        self.love!(baby)
        baby.love!(self)
        baby
      else
        false
      end
    end
  end
end
