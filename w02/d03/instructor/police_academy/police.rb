require 'securerandom'

class Police
  attr_accessor :duty
  attr_reader   :name, :badge

  DUTIES = ['traffic','beat','vice','homicide','internal affairs']

  def self.train(person)
    badge  = SecureRandom.hex[0..9].upcase
    police = self.new(person.name, badge) # self, inside of a class method, is
    police.duty = DUTIES.sample           # the class!
    police
  end

  def initialize(name, badge)
    @name  = name
    @badge = badge
  end
end
