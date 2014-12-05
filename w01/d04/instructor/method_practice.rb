require 'pry'

def get_answer_to(question)
  $stdout.puts(question)
  user_answer = $stdin.gets.chomp.upcase
  return user_answer
end

brians_fav_song = get_answer_to("What's your favorite song, Brian?")

$stdout.puts("Brian's favorite song is #{brians_fav_song}.")

kristens_fav_song = get_answer_to("What's your favorite song, Kristen?")

$stdout.puts("Kristen's favorite song is #{kristens_fav_song}.")

def square(x)
  return (x * x)
end

square_of_eight = square(8)

$stdout.puts(square_of_eight)

def halve(some_number)
  return (some_number / 2.0)
end

half_of_thirty = halve(30)

$stdout.puts(half_of_thirty)

half_of_sixty_four = halve(64)

$stdout.puts(half_of_sixty_four)

halve("stringy string string")

def cube(number)
  return (number ** 3)
end

cube_of_three = cube(3)

$stdout.puts(cube_of_three)

cube_of_four = cube(4)

$stdout.puts("The cube of four is #{cube_of_four}.")

def calculate_area(height, width)
  return (height * width)
end

patricios_prison_chamber_square_footage = calculate_area(35, 40)

$stdout.puts(patricios_prison_chamber_square_footage)

def quadruple(x)
  return (4 * x)
end

four_times_two = quadruple(2)

$stdout.puts("Four times two is #{four_times_two}.")


def sing(lyric)
  $stdout.puts(lyric.upcase + "!!!")
end

sing("Enter sandman!")

sing("Shake it off, shake shake it off!")

sing("Freeze your blood and stab it into me")

# Define a method, calculate_generous_tip_amount which takes a single argument and returns a value equal to 20% of the whatever is passed in as the argument.

def calculate_generous_tip_amount(meal_value)
  return (meal_value * 0.2)
end

lunch_tip_dec_4 = calculate_generous_tip_amount(7)
dinner_tip_dec_4 = calculate_generous_tip_amount(9)

# Define a method, convert_kelvin_to_celcius which takes a single argument and returns a Float value equal to the argument minus 273.15.
# Call this method with a numeric value of your choosing and save the output to a variable called fav_temp_in_celcius.

def convert_kelvin_to_celcius(temp_in_kelvin)
  return (temp_in_kelvin.to_f - 273.15)
end

fav_temp_in_celcius = convert_kelvin_to_celcius(283.15)

# Define a method, calculate_volume that takes three arguments, and returns the product of those three arguments.
# Call this method with values of your choosing and save the output to a variable called volume_of_heaven_in_cubic_feet.
# Call this method again but with different arguments, save the output to a sensibly named variable of your choosing.

def calculate_volume(height, width, length)
  return (height * width * length)
end

volume_of_heaven_in_cubic_feet = calculate_volume(1609, 10500, 2790)
binding.pry
