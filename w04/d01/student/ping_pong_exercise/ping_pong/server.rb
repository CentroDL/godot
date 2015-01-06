module Pgame

class Server < Sinatra::Base
    @@score=0
    @@comp_score=0

    get '/' do
      "Hello and Welcome to Ping Pong, the Sinatra Game!\n

      \nGo to the following paths to play the game:\n
      1) /serve -- begin a game by serving\n
      2) /ping  -- swing on the left (ping the ball!)\n
      3) /pong  -- swing on the right (pong the ball!)\n"
    end# '/'

    get'/serve' do
      PingPong::Game.serve!
      PingPong::Game.hit!
      if PingPong::Game.state == nil
        @@score += 1
        "The computer has missed! The score is now Player - #{ @@score } Computer - #{ @@comp_score } "
      else
        "The computer has hit the ball to *#{ PingPong::Game.state.to_s }*. Quickly, hit it back!"
      end
    end # /serve

    get'/ping' do
      if !PingPong::Game.player_has_served?
        "Start the game first. Serve!"
      elsif PingPong::Game.is_ping?
        PingPong::Game.hit!
        if PingPong::Game.state == nil
        @@score += 1
        "The computer has missed! The score is now Player - #{ @@score } Computer - #{ @@comp_score } "
        else
        "The computer has hit the ball to *#{ PingPong::Game.state.to_s }*. Quickly, hit it back!"
      end
      else
        @@comp_score += 1
        "You wiffed! The score is now Player- #{ @@score } Computer - #{ @@comp_score }"
      end
    end #/ping

    get'/pong' do
      if !PingPong::Game.player_has_served?
        "Start the game first. Serve!"
      elsif PingPong::Game.is_pong?
        PingPong::Game.hit!
        if PingPong::Game.state == nil
        @@score += 1
        "The computer has missed! The score is now Player - #{ @@score } Computer - #{ @@comp_score } "
        else
        "The computer has hit the ball to *#{ PingPong::Game.state.to_s }*. Quickly, hit it back!"
        end
      else
        @@comp_score += 1
        "You wiffed! The score is now Player- #{ @@score } Computer - #{ @@comp_score }"
      end
    end #/pong

  end#Server

end#Pgame
