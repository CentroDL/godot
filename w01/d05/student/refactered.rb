# *Read* through the following code
# Write comments above *each line* explaining what it does
# calls a gem for color methods and code
require 'colorize'

# Methods
#Generates Random number method creates an array of digits and takes a sample
def generate_random_number
  (1..10).to_a.sample
end

#Generates alert method which which outputs a green message
def alert(message)
  $stdout.puts(message.green)
end

#Generates warn method which outputs a red message
def warn(message)
  $stdout.puts(message.red)
end

#Generates ask method outputs a question and a newline also gets the users response
def ask(question)
  $stdout.puts(question)
  $stdout.print('> ')
  $stdin.gets.chomp
end

# Main Program
#creates a hash called players
players = {}

#creates a loop
loop do
# sets secret number variable = output from generate_random_number method
  secret_number = generate_random_number
# sets player equal to the output of the ask method when you input "name?" into it
  player = ask('Name? ')
# In the hash, 'players', it creates a key to(=>) value relationship btw a new player and an array
  players[player] = []
# Runs the alert method with the input below
  alert('I\'m thinking of a number between 1 and 10.')

# Creates an imbedded loop
  loop do
# sets guess equal to the output of the ask method when given the new string and turns the output into an integer
    guess = ask('Can you guess it?').to_i
# In the hash, 'players', it pushes the guess value into an array pointed to by the key, 'player'
    players[player].push(guess)
# breaks the imbedded loop if the secret_number is equal to the guess number
    break if secret_number == guess
# else run the warn method with the inputted string below that calls the guess number
    warn("#{guess}? Try again!")
  end #end of inner loop
# Calls alert method and inputs the string below calling player
  alert("Great job, #{player}!")
# Calls alert method and inputs the string below calling players[player].size (which returns the size of the array associated with the key 'player' in the hash 'players')
  alert("You guessed in #{players[player].size} guesses.")
# sets choice equal to the output of the ask method given the inputted string below
  choice = ask('New Game? y/n')
# breaks outer loop if choice starts with a "n"
  break if choice.start_with?('n')
# else run outer loop again
end # end of outer loop

# runs alert method given the input 'Goodbye!'
alert('Goodbye!')
