## Air Conditioning

# You've been tasked with writing a simple program that asks the user for the current temperature and the desired temperature, and whether or the not the A/C is on.  Depending on the user's inputs, print an appropriate response.

#### Exercise Objectives
# * expand your understanding of conditional execution
# * build resourcefulness in finding new methods/tools to accomplish your aims

#### Directions

# 1. Create an `air_conditioning.rb` file in today's "student" directory.
# 1. Write a program that meets the following specs:
<<<<<<< HEAD
#     - Ask the user for the current temperature, desired temperature, and whether or not the AC is on.
#     - If the current temperature is above the the desired temperature and the A/C is currently off, print "Please turn on the A/C. It's stifling in here."
#     - If the current temperature is below the desired temperature and the A/C is currently on, print "Please turn off the air conditioner. I'm cooler than cool."
#     - If the desired temperature and the current temperature are the same, the user should never be bothered with the state of the A/C. Simply print, "Ahh, life is wondrous."

$stdout.puts("What is the current temperature?")
curr_temp = $stdin.gets.to_i

$stdout.puts("What is your desird temperature?")
des_temp = $stdin.gets.to_i

$stdout.puts("Is your A/C unit on?(true/false)?")
power = $stdin.gets.downcase.chomp

if (curr_temp > des_temp) && (power == "false")
  $stdout.puts("Please turn on the A/C. It's stifling in here.")
elsif (curr_temp < des_temp) && (power == "false")
  $stdout.puts("Why is it sooooo cold!!")
elsif (curr_temp < des_temp) && (power == "true")
  $stdout.puts("Please turn off the air conditioner. I'm cooler than cool.")
elsif (curr_temp == des_temp)
  $stdout.puts("thats convenient")
else
  $stdout.puts("I wonder whats going on")
=======
    # - Ask the user for the current temperature, desired temperature, and whether or not the AC is on.
    # - If the current temperature is above the the desired temperature and the A/C is currently off, print "Please turn on the A/C. It's stifling in here."
    # - If the current temperature is below the desired temperature and the A/C is currently on, print "Please turn off the air conditioner. I'm cooler than cool."
    # - If the desired temperature and the current temperature are the same, the user should never be bothered with the state of the A/C. Simply print, "Ahh, life is wondrous."

$stdout.puts "What is the current temperature?"
temperature = $stdin.gets.chomp.to_i
$stdout.puts "Is the AC on (yes/no)?"
temperature = $stdin.gets.chomp.to_i
$stdout.puts "What is the desired temperature?"
temperature = $stdin.gets.chomp.to_i


if ac_working == "yes" && temperature < desired
  $stdout.puts("Please turn off the air conditioner. I'm cooler than cool.")
elsif ac_working != "yes" && temperature > desired
  $stdout.puts("Please turn on the A/C. It's stifling in here.")
else ac_working == "yes" && temperature == desired
  $stdout.puts("Ahh, life is wondrous.")
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
end
