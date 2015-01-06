require_relative 'game'

include PingPong

@wins   = 0
@losses = 0

def win
  @wins += 1
  end_game("The computer missed!")
end

def lose
  @losses += 1
  end_game("You whiffed!")
end

def end_game(message)
  puts "#{message} The score is now Player #{@wins} - Computer #{@losses}."
  Game.end!
end
puts <<EOF
Hello and Welcome to Ping Pong, the Terminal Game!

Enter your commands below:
1) serve: begin a game by serving
2) ping!: swing on the left (ping the ball!)
3) pong!: swing on the right (pong the ball!)
4) exit:  leave the game

EOF

loop do
  print "> "
  input = gets.chomp.downcase

  case input
  when "exit" then break
  when "serve"
    if Game.player_has_served?
      puts "You've already served! Hit the ball!"
    else
      Game.serve!
      hit = Game.hit!

      if hit == false
        win
      else
        puts "The computer has hit the ball to *#{hit}*. Quickly, hit it back!"
      end
    end
  when "ping!"
    if !Game.computer_has_hit?
      puts "Start the game first. Serve!"
    elsif Game.is_ping?
      puts "Nice return!"
      hit = Game.hit!

      if hit == false
        win
      else
        puts "The computer has hit the ball to *#{hit}*. Quickly, hit it back!"
      end
    else
      lose
    end
  when "pong!"
    if !Game.computer_has_hit?
      puts "Start the game first. Serve!"
    elsif Game.is_pong?
      puts "Nice return!"
      hit = Game.hit!

      if hit == false
        win
      else
        puts "The computer has hit the ball to *#{hit}*. Quickly, hit it back!"
      end
    else
      lose
    end
  else
    puts "I don't understand that command. I only understand:"
    puts "serve, ping!, pong!, and exit."
  end
end

puts
puts "Thanks for playing!"
