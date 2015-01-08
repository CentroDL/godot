require 'json'
require 'httparty'
require 'pry'
female_results = HTTParty.get "http://api.randomuser.me/?gender=female&results=10"
male_results = HTTParty.get "http://api.randomuser.me/?gender=male&results=5"

# my_hash = JSON.parse(female_results)

ten_female_first_and_lastnames = []

female_results["results"].each do|person|
  fname = person["user"]["name"]["first"]
  lname = person["user"]["name"]["last"]
  ten_female_first_and_lastnames.push fname + ' ' + lname
end

# my_hash = JSON.parse(male_results)
five_male_thumbnails = []

male_results["results"].each do|person|
  five_male_thumbnails.push person["user"]["picture"]["thumbnail"]
end

puts ten_female_first_and_lastnames
puts five_male_thumbnails
binding.pry
