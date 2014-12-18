require 'pry'
module Holidays
  class Server < Sinatra::Base

    get '/'  do
       # exclamations = ''
       # params[:level].to_i.times {exclamations += '!'}
       # binding.pry
      # "Happy Holdays#{exclamations}"
      #sinatra will look for a views folder
      @title = "index"
      render(:erb, :index, {:layout => :default_layout})
    end

    get '/about' do
      @date = Time.new
      render(:erb, :about, {:layout => :default_layout})
    end

  end
end
