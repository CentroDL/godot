require 'pry'
require_relative 'episode_info'
module FullHouseApp

  class Server < Sinatra::Base
    #based on our optional parameter we pull data from ROUTES
    get '/?:decision?' do

      if params[:decision] == nil
        @stuff = ROUTES[:root]
      else
        @stuff = ROUTES[params[:decision].to_sym]
      end

      render(:erb, :index, { layout: :template} )

    end

  end#Server

end#FullHouseApp

