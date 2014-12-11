require 'pry'

ratings = "pg-thirteen,pg,r,pg,pg-thirteen,pg-thirteen,pg-thirteen,r,r,r,r,pg-thirteen,r,pg-thirteen,r,r,r,r,r,r,pg-thirteen,r,pg-thirteen,pg-thirteen,pg,r,r,pg,pg".split(',')
movies = "the hunger games: mockingjay - part 1|penguins of madagascar|horrible bosses 2|big hero 6|interstellar|dumb and dumber to|the theory of everything|gone girl|the pyramid|birdman|nightcrawler|st. vincent|fury|beyond the lights|wild|foxcatcher|the homesman|whiplash|john wick|the equalizer|guardians of the galaxy|the judge|the maze runner|ouija|alexander and the terrible, horrible, no good, very bad day|rosewater|hector and the search for happiness|the book of life|the boxtrolls".split('|')
scores = "65%, 76%*71%, 68%*34%, 60%*89%, 94%*73%, 87%*26%, 49%*81%, 84%*88%, 89%*7%, 39%*94%, 86%*95%, 87%*76%, 82%*78%, 88%*84%, 83%*92%, 80%*86%, 77%*79%, 53%*96%, 96%*85%, 82%*61%, 81%*90%, 94%*47%, 76%*63%, 73%*7%, 29%*62%, 65%*74%, 75%*36%, 67%*82%, 82%*75%, 68%".split('*')

# ratings.each { |rating| rating.gsub!('thirteen','13')}
# ratings.each { |rating| rating.gsub!('pg','PG')}

mapped_ratings = ratings.map { |rating| rating.gsub('thirteen', '13')}
mapped_ratings.map! { |rating| rating.gsub('pg', 'PG')}

mapped_movies = movies.map! { |movie| movie.split.map { |word| word.capitalize }.join(" ")}

puts mapped_ratings.select { |movie| movie == 'r'}

# movie_hash =

binding.pry

# Transform the that array of strings into an array of hashes with a key of title and a value of the title.

