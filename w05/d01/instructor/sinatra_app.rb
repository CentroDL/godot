class Server < Sinatra::Base
  get '/' do
    render :erb, :index, layout: :default
  end
end
