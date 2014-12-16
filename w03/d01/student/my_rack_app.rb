require 'rack'
require 'colorize'

app = Proc.new do |env|
  ['200', {'Content-Type' => 'text/html'}, ['<header><title>Rack App Test</title></header><body><h1>THIS IS A RACK THING</h1><div>test test test test test test test test </div></body>']]
end

Rack::Handler::WEBrick.run app
