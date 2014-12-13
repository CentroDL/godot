movie_ratings = "pg-thirteen,pg,r,pg,pg-thirteen,pg-thirteen,pg-thirteen,r,r,r,r,pg-thirteen,r,pg-thirteen,r,r,r,r,r,r,pg-thirteen,r,pg-thirteen,pg-thirteen,pg,r,r,pg,pg"

ratings = movie_ratings.split(",")

movie_titles = "the hunger games: mockingjay - part 1|penguins of madagascar|horrible bosses 2|big hero 6|interstellar|dumb and dumber to|the theory of everything|gone girl|the pyramid|birdman|nightcrawler|st. vincent|fury|beyond the lights|wild|foxcatcher|the homesman|whiplash|john wick|the equalizer|guardians of the galaxy|the judge|the maze runner|ouija|alexander and the terrible, horrible, no good, very bad day|rosewater|hector and the search for happiness|the book of life|the boxtrolls"

titles = movie_titles.split("|")

movie_scores = "65%, 76%*71%, 68%*34%, 60%*89%, 94%*73%, 87%*26%, 49%*81%, 84%*88%, 89%*7%, 39%*94%, 86%*95%, 87%*76%, 82%*78%, 88%*84%, 83%*92%, 80%*86%, 77%*79%, 53%*96%, 96%*85%, 82%*61%, 81%*90%, 94%*47%, 76%*63%, 73%*7%, 29%*62%, 65%*74%, 75%*36%, 67%*82%, 82%*75%, 68%"

scores = movie_scores.split("*")

# ////////////CHANGING MOVIE RATINGS/////////////////////
new_ratings = []
ratings.each do |rating|
  rate = rating.gsub("thirteen","13")
  new_ratings.push(rate)
end
# puts(new_ratings)

mapped_ratings = ratings.map do |rating|
  rate = rating.sub("thirteen","13")
end
# puts(mapped_ratings)

new_mapped_ratings = mapped_ratings.map do |rating|
  rating.upcase
end
# puts(new_mapped_ratings)

good_ratings = new_mapped_ratings.select do |rating|
  rating.include?("PG")
end
puts(good_ratings)

# ///////////CHANGING MOVIE TITLES///////////////////////
# puts(titles)
cap_titles = titles.map do |title|
  title_array = title.split(" ")
  fixed_title_array = title_array.map {|word| word.capitalize}
  fixed_title_array.join(" ")
end
# puts(cap_titles)

title_array_hash = cap_titles.map do |title|
  {:title => title}
end
# puts(title_array_hash)

scores_array_hash = scores.map do |score|
  {:scores => score}
end
# puts(scores_array_hash)
