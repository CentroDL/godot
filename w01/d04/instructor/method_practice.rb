# def get_answer_to(question)
#   $stdout.puts(question)
#   user_answer = $stdin.gets.chomp.upcase
#   return user_answer
# end

# brians_fav_song = get_answer_to("What's your favorite song, Brian?")

# $stdout.puts("Brian's favorite song is #{brians_fav_song}.")

# kristens_fav_song = get_answer_to("What's your favorite song, Kristen?")

# $stdout.puts("Kristen's favorite song is #{kristens_fav_song}.")

def square(x)
  return (x * x)
end

# square_of_eight = square(8)

# $stdout.puts(square_of_eight)

def halve(some_number)
  return (some_number / 2.0)
end

# half_of_thirty = halve(30)

# $stdout.puts(half_of_thirty)

# half_of_sixty_four = halve(64)

# $stdout.puts(half_of_sixty_four)

# halve("stringy string string")

def cube(number)
  return (number ** 3)
end

# cube_of_three = cube(3)

# $stdout.puts(cube_of_three)

# cube_of_four = cube(4)

# $stdout.puts("The cube of four is #{cube_of_four}.")

def calculate_area(height, width)
  return (height * width)
end

patricios_prison_chamber_square_footage = calculate_area(35, 40)

$stdout.puts(patricios_prison_chamber_square_footage)



