# *Read* through the following code
# Write comments above *each line* explaining what it does

# calling a gem which is also a file of preset font types/methods
require 'colorize'

#  instantiates the variable playing_game = true
playing_game = true
# creating a hash named players
players = {}

# starts the while loop with playing being = true
while playing_game

# sets secret number equal to a sample of an array filled with 1-10
  secret_number = (1..10).to_a.sample
# sets guessed = false
  guessed = false

# prints to the user "Name?""
  $stdout.print('Name? ')
  # sets player = the users input (i.e. their name)
  player = $stdin.gets.chomp
# creates an array within a hash
  players[player] = []
#outputs to the user the statement below
  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

#new while loop runs when guessed = false
  while !guessed
# print line
    $stdout.print('> ')
#sets guess = user input which is changed to an int
    guess = $stdin.gets.to_i
# puts the players guess into the array with the hash
    players[player].push(guess)

# An if loop to check to see if the number is correct
    if secret_number == guess
      guessed = true
    else
# otherwise outputs a fail statement which calls your guess
      $stdout.puts("#{guess}? Try again!".red)
    end #end if

  end # end inner while

  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)

  $stdout.puts('New Game?')
# gets a user input to decide whether to exit the while loop based on whether there answer starts with a Y
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
end # end outer while

$stdout.puts('Goodbye!')

