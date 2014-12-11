# s = Score.new(0.45)
# s.to_s #=> "45%"
# s.reviewed_by.class #=> NilClass < Object
# require 'pry'
require_relative 'person'
require_relative 'critic'

class Score
  attr_reader :reviewed_by

  def initialize(score)
    @score = score
  end

  def to_s
    "#{@score*100.round(0)}%"
  end

  def reviewed_by=(critic)
    critic.class == Critic ? @reviewed_by = critic : (raise ArgumentError, "Opps! Reviewer should be a Critic Object!")
  end
end

# binding.pry
