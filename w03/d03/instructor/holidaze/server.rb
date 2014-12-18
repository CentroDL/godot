require 'pry'
require 'date'
module Holidays
  class Server < Sinatra::Base

    # GET '/?level=5'
    get('/') do
      excitement_level = params[:level].to_i
      bangs = "!" * excitement_level
      # instance variables are available in our view templates
      @greeting = "Happy Holidays" + bangs
      # render grabs a default_layout.erb file in views
      # and adds index.erb to it
      render(:erb, :index, {:layout => :default_layout})
    end


    # handle a GET request to '/date'
    # render an erb file called date.erb
    get('/date') do
      @date = Date.today
      # this does not render with layout.
      render(:erb, :date)
    end

    get('/default') do
      @date = Date.today
      # this renders with a layout.
      render(:erb, :date, {:layout => :default_layout})
    end
  end
end







