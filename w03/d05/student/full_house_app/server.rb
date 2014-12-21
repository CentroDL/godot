require 'pry'
require_relative 'episode_info'
module FullHouseApp

  class Server < Sinatra::Base

    get '/?:path?' do
      if params[:path] == nil
        @stuff = ROUTES[:root]
      else
        @stuff = ROUTES[params[:path].to_sym]
      end
      render(:erb, :index, { layout: :template} )
      # binding.pry
    end

  end#Server

end#FullHouseApp

