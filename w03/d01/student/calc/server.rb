require 'pry'
module Calc
  class Server < Sinatra::Base

    # turn "hello" into a hyperlink
    # the hyperlink should perform a GET request to /hello
    # at /hello it should say "nice to meet you"
    get('/') do
      status(200)
      headers({})
      html = '<a href="/hello">hello</a>'
      body(html)
    end

    get('/hello') do
      status(200)
      headers({})
      body('nice to meet you')
    end


    get('/hi/:name') do
      # we don't need to call status, headers or body
      # unless we want to add additional information
      # the last line is send back in the response
      "Hello #{params[:name]}"
    end

    get('/:x/times/:y') do
      (params[:x].to_i * params[:y].to_i).to_s
    end

     get('/:x/plus/:y') do
      (params[:x].to_i + params[:y].to_i).to_s
    end


  end#Server
end#Calc
