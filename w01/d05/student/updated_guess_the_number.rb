# *Read* through the following code
# Write comments above *each line* explaining what it does


#gives us from the colorize gem
require 'colorize'

#assigns playing_game to true
playing_game = true

#creates empty hash
players = {}


#run the game
while playing_game

  #get a random number from 1-10
  secret_number = (1..10).to_a.sample
  #set guess to false
  guessed = false

  #ask user what their name is
  $stdout.print('Name? ')
  #get player's name
  player = $stdin.gets.chomp
  #stores player's name
  players[player] = []

  #ask player to guess the number
  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

  #if the numbers wrong get guesses from the player
  while !guessed
    #print a '>'
    $stdout.print('> ')

    #set a guess to the players guess and make it a number
    guess = $stdin.gets.to_i

    #store the players guess, in their part of the players array
    players[player].push(guess)

    #if the guess is right, set guessed to true to stop getting guesses from the player
    if secret_number == guess
      guessed = true
    #otherwise tell them their guesses, and try again
    else
      $stdout.puts("#{guess}? Try again!".red)
    end #if

  end#while

  #the guessing part ran so now we should have a final amount of
  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)

  #ask if they want to continue
  $stdout.puts('New Game?')
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
end

$stdout.puts('Goodbye!')

