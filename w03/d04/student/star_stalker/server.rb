require_relative 'star_power'
module StarStalker

  class Server < Sinatra::Base
    get "/" do
      render(:erb, :index, {layout: :default_layout})
    end#'/'

    get "/about" do
      render(:erb, :about, {layout: :default_layout})
    end#/about

    get "/stars" do
      render(:erb, :stars, {layout: :default_layout})
    end#/stars

    get "/stars/:index" do
      @star = StarPower::STARS[params[:index].to_i]
      render(:erb, :profile, { layout: :default_layout})
    end

  end#Server

end#StarStalker
