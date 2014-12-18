module Portfolio

  class Server < Sinatra::Base

    # get('/') do
    #   status(200)
    #   headers({"X-Powered-By" => "Sinatra"})
    #   body("<h1>Good Morning</h1>\n<h2>The current date is #{Time.now}</h2>")
    # end#get '/'

    get('/') do
      status(301)
      headers({"Location" => "/index.html"})
      redirect "/index.html"
    end


  end#Server

end#Portfolio
