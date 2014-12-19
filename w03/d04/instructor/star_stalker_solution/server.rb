require_relative 'star_power'
include StarPower

module StarStalker
  class Server < Sinatra::Base
    get("/") do
      render(:erb, :index, { :layout => :default_layout })
    end

    get("/stars") do
      if params["alive"] == "true"
        @stars = STARS.select { |x| x[:alive] == true }
      elsif params["alive"] == "false"
        @stars = STARS.select { |x| x[:alive] == false }
      else
        @stars = STARS
      end
      render(:erb, :stars, { :layout => :default_layout })
    end


    get("/stars/:id") do
      id = params[:id].to_i
      @star = STARS[id]
      render(:erb, :profile, { :layout => :default_layout })
    end
  end
end
