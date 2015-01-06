module PingPong
  class Game

    @@state=nil

    def self.state
        @@state
    end

    def self.difficulty=(diff=:medium)
      @difficulty=diff
    end

    def self.difficulty
      @difficulty
    end
#     player_has_served? that returns true if the state is not nil (ie, a game has begun)
    def self.player_has_served?
      true if @@state
    end
# is_ping? and is_pong?, that return true when the state is, respectively, :ping or :pong
    def self.is_pong?
      @@state == :ping
    end

    def self.is_ping?
      @@state == :pong
    end
# computer_has_hit? that returns true if the state is :ping or :pong
    def self.computer_has_hit?
      is_ping? || is_pong?
    end

    def self.serve!
      @@state = :served
      true
    end

    def self.miss? #true == missed shot
      roll = rand(100) + 1 #+1 to offset 0-99 roll
      if difficulty == :easy
        roll <= 50 #50% chance to miss
      elsif difficulty == :medium
        roll <= 33 #33% chance to miss
      else #hard
        roll <= 25 #25% chance to miss
      end
    end

    def self.hit!
      if !computer_has_hit?
        @@state = nil
        false
      elsif computer_has_hit? && is_ping?
        @@state = :ping
        "ping"
      elsif computer_has_hit? && is_pong?
        @@state = :pong
        "pong"
      end
    end

    def self.end!
      @@state = nil
    end

    def self.ping!
      if is_ping?
        @@state = :served
        true
      else
        end!
        false
      end
    end

    def self.pong!
      if is_pong?
        @@state = :served
        true
      else
        end!
        false
      end
    end


  end#Game
end#PingPong

# puts PingPong::Game.serve!
# puts PingPong::Game.hit!
# puts PingPong::Game.ping!
# puts PingPong::Game.hit!
# puts PingPong::Game.pong!
