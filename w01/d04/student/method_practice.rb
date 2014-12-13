<<<<<<< HEAD
# MY FIRST METHOD...AWESOME ISNT IT

def get_answer_to(question)
  $stdout.puts(question)
  user_answer = $stdin.gets.chomp.downcase + "!"
  return user_answer
end

# brians_fav_song = get_answer_to("What's your favorite song, Brian?")
# $stdout.puts("Brian's favorite song is #{brians_fav_song}.")

# kristens_fav_song = get_answer_to("What's your favorite song, Kristen?")
# $stdout.puts("Kristen's favorite song is #{kristens_fav_song}.")


# # MY CREATING SQUARES METHOD
def square(x)
  num_squared = x * x
  return num_squared
end
=======
# def get_answer_to(question)
#   $stdout.puts(question)
#   user_answer = $stdin.gets.chomp.downcase + "!"
#   return user_answer
# end

# brian_fav_song = get_answer_to("what's your favorite song, Brian?")

# $stdout.puts("Brian's favorite song is #{brian_fav_song}.")

# kristens_fav_song = get_answer_to("what's your favorite song, Kristen?")

# $stdout.puts("Kristen's favorite song is #{kristens_fav_song}.")

# def square (x)
#   return (x * x)
# end
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5

# square_of_eight = square(8)
# $stdout.puts(square_of_eight)

<<<<<<< HEAD

# # MY HALVING METHOD
def halve(some_number)
  return some_number / 2.0
end

# half_of_thirty = halve(30)
# $stdout.puts(half_of_thirty)

# half_of_sixtyfour = halve(64)
# $stdout.puts(half_of_sixtyfour)


# # MY CUBING METHOD
def cube (number)
  return (number ** 3)
end

# cube_of_three = cube(3)
# $stdout.puts(cube_of_three)


# # MY AREA CALCULATOR METHOD
def calculate_area( x, y)
  return (x * y)
end

# prison_cell_area = calculate_area(12,11)
# $stdout.puts("My prison cell area is #{prison_cell_area}.")


# MY SINGING METHOD
def sing (voice)
  singing = voice.upcase + "!!!!!!"
  return (singing)
end

# singing_in_the_rain = sing("singing in the rain")
# $stdout.puts(singing_in_the_rain)

# new_song = sing("Freeze your blood and stab it into me.")
# $stdout.puts(new_song)


# Tip Calculator Method
def calculate_generous_tip_amount (bill)
  tip_amount = (bill * 0.20).round(3)
  return tip_amount
end

# lunch_tip_on_dec_4 = calculate_generous_tip_amount(187.00)
# $stdout.puts(lunch_tip_on_dec_4)

# dinner_tip_on_dec_4 = calculate_generous_tip_amount(250)
# $stdout.puts(dinner_tip_on_dec_4)


#Converting Kelvin to Celsius
def convert_kelvin_to_celsius(kelvin)
  conversion = kelvin.to_f - 273.15
  return conversion
end

# fav_temp_in_celsius = convert_kelvin_to_celsius(83)
# $stdout.puts(fav_temp_in_celsius)


#MY Calculate Volume Method
def calculate_volume (height, width, length)
  volume = height * width * length
  return volume
end

# volume_of_heaven_in_cubic_feet = calculate_volume(137,252,36)
# $stdout.puts("#{volume_of_heaven_in_cubic_feet} in cubic feet")

# new_volume = calculate_volume( 4, 6, 8)
# $stdout.puts(new_volume)

=======
# def halve(some_number)
#   return some_number / 2.0
# end

# # half_of_thirty = halve(30)
# # $stdout.puts(half_of_thirty)

# # half_of_sixty_four = halve(64)
# # $stdout.puts(half_of_sixty_four)

# halve("stringy string string")

# def cube(number)
#   return(number ** 3)
# end

# # cube_of_three = cube(3)
# # $stdout.puts(cube_of_three)

# # c
# def calculate_area(height, width)
#   return(height * width)

# end

# patricios_prison_chamber_square_footage = calculate_area(35, 40)
# $stdout.puts(patricios_prison_chamber_square_footage)

def sing(song)
  $stdout.puts(song)
  lyric = $stdin.gets.chomp.upcase + "!!!!!!!!!"
  return lyric
end

# fav_lyric = sing("What's your favorite song lyric?")
# $stdout.puts("Your favorite song lyric is #{fav_lyric}.")

# trav_fav_lyric = sing("Travis, what's your favorite song lyric?")
# $stdout.puts("Travis' favorite song lyric is #{trav_fav_lyric}.")

# def calculate_generous_tip_amount(price)
#   return(price * 0.2)
# end

#   lunch_tip_on_dec_4 = calculate_generous_tip_amount(100)
#   $stdout.puts("You should tip your waiter #{lunch_tip_on_dec_4}")

#   dinner_tip_on_dec_4 = calculate_generous_tip_amount(150)
#   $stdout.puts("You should tip your waiter #{dinner_tip_on_dec_4}")

# def convert_kelvin_to_celcius(temp)
#   return(temp - 273.15)
# end

#   fav_temp_in_celcius = convert_kelvin_to_celcius(50)
#   $stdout.puts("Brrr, it's #{fav_temp_in_celcius} degrees today!!")

# def calculate_volume(length, width, height)
#   return(length * width * height)
# end

#   volume_of_heaven_in_cubic_feet = calculate_volume(500, 700, 200)
#   $stdout.puts("The throne room of Heaven is #{volume_of_heaven_in_cubic_feet}")
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
