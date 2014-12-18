module Portfolio
  class Server < Sinatra::Base

    # Routes
    get('/') do
      headers({"X-Powered-By" => "Sinatra"})
      render(:erb, :index, {:layout => :default})
    end

    get('/about') do
      render(:erb, :about, {:layout => :default})
    end

  end # Server
end # Portfolio
