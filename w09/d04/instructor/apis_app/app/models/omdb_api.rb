require 'httparty'

module OmdbApi
  def self.search(title)
    binding.pry
    url = "http://www.omdbapi.com/?s=#{title}&r=json"
    response = HTTParty.get(url)
    JSON.parse(response.body)["Search"]
  end

  def self.info(imdb_id)
    # construct the url
    url = "http://www.omdbapi.com/?i=#{imdb_id}&r=json"
    # do an httparty request
    response = HTTParty.get(url)
    # parse the response as json
    JSON.parse(response.body)
  end
end
