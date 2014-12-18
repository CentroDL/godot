module Wdi

  class Server < Sinatra::Base
    $compliments = [
  "People behind you in class think you are the perfect height.",
  "Your instructors think you're young.",
  "Your posture during breaks effectively masks your exhaustion.",
  "Your commit messages are Kafka-esque",
  "Your fingers are magic on the keys",
  ]
    get('/') do
      @color = ("%06x" % (rand * 0xffffff)).to_s
      @compliment = $compliments.sample
      render( :erb, :index)
    end

    get('/:name') do
      @name = params[:name].upcase
      @compliment = $compliments.sample
      render( :erb, :index)
    end


  end#Server

end#Portfolio
