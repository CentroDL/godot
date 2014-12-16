require 'rack'

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['<hi>cats are the best</hi>']]
end

Rack::Handler::WEBrick.run app
