require_relative 'game'

$wins   = 0
$losses = 0

module PingPong
  class Server < Sinatra::Base
    get('/') do
    text = <<EOF
Hello and Welcome to Ping Pong, the Sinatra Game!

Go to the following paths to play the game:
1) /serve -- begin a game by serving
2) /ping  -- swing on the left (ping the ball!)
3) /pong  -- swing on the right (pong the ball!)
EOF
    text + "\n" + end_game("").strip + "\n"
    end

    get('/serve') do
      if Game.player_has_served?
        "You've already served! Hit the ball!\n"
      else
        Game.serve!
        hit = Game.hit!

        if hit == false
          win
        else
          "The computer has hit the ball to *#{hit}*. Quickly, hit it back!\n"
        end
      end
    end

    get('/ping') do
      if !Game.computer_has_hit?
        "Start the game first. Serve!\n"
      elsif Game.is_ping?
        "Nice return!"
        hit = Game.hit!

        if hit == false
          win
        else
          "The computer has hit the ball to *#{hit}*. Quickly, hit it back!\n"
        end
      else
        lose
      end
    end

    get('/pong') do
      if !Game.computer_has_hit?
        "Start the game first. Serve!\n"
      elsif Game.is_pong?
        "Nice return!"
        hit = Game.hit!

        if hit == false
          win
        else
          "The computer has hit the ball to *#{hit}*. Quickly, hit it back!\n"
        end
      else
        lose
      end
    end

    def win
      $wins += 1
      end_game("The computer missed!")
    end

    def lose
      $losses += 1
      end_game("You whiffed!")
    end

    def end_game(message)
      Game.end!
      "#{message} The score is now Player #{$wins} - Computer #{$losses}.\n"
    end
  end
end
