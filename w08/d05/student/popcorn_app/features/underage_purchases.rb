teenager = User.new({email: "laxbro@gmail.com", born_on: "1/27/02", balance: 50})
rated_r_movie = Movie.find_by({rating: "R"})
teenager.can_view?(movie)        #=> should return false
teenager.rent(movie)             #=> should return false
teenager.rentals.include?(movie) #=> should return false
