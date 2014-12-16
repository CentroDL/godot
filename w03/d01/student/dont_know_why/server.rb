module AppName
  class Server < Sinatra::Base
    enable :logging
    get('/') do
      $stderr.puts "We have an error."
      logger.error "We have an error."
      logger.info  "Made to: #{request.url}"

      status 200
      if request.params.length != 0
        body "The request's params were: '#{request.params}'.\n"
      else
        "Empty request params\n"
      end
    end
  end
end

