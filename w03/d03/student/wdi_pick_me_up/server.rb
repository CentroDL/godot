module Wdi

  class Server < Sinatra::Base
    COMPLIMENTS = [
  "People behind you in class think you are the perfect height.",
  "Your instructors think you're young.",
  "Your posture during breaks effectively masks your exhaustion.",
  "Your commit messages are Kafka-esque",
  "Your fingers are magic on the keys",
  ]
    get('/') do
      @compliment = COMPLIMENTS.sample
      render( :erb, :index)
    end

    get('/:name') do
      @name = params[:name].upcase
      @compliment = COMPLIMENTS.sample
      render( :erb, :index)
    end


  end#Server

end#Portfolio
