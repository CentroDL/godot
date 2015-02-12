class MoviesController < ApplicationController
  def index
  end

  def search
    @title = params[:title]
    # url = "http://www.omdbapi.com/?s=#{@title}&r=json"
    # response = HTTParty.get(url) #...
    # @movies = JSON.parse(response.body)["Search"]
    # # handle the JSON
    # # render the results
    @movies = OmdbApi.search(@title)
  end

  def show
    imdb_id = params[:imdb_id]
    # # construct the url
    # url = "http://www.omdbapi.com/?i=#{imdb_id}&r=json"
    # # do an httparty request
    # response = HTTParty.get(url)
    # # parse the response as json
    # @movie = JSON.parse(response.body)
    # # render the movie info
    @movie = OmdbApi.info(imdb_id)
  end
end
