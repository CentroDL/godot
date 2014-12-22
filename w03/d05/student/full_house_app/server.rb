require 'pry'
require_relative 'episode_info'
module FullHouseApp

  class Server < Sinatra::Base
    #based on our optional parameter we pull data from ROUTES
    get '/?:decision?' do

      if params[:decision] == nil
        unless params[:info]
          @opening = "Opening theme and titles"
        end
        @stuff = ROUTES[:root]
      else
        @opening = nil
        @stuff = ROUTES[params[:decision].to_sym]
      end

      render(:erb, :index, { layout: :template} )
    end

  end#Server

end#FullHouseApp

