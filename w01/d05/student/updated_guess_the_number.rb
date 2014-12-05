# *Read* through the following code
# Write comments above *each line* explaining what it does

# sets the GEM for this code
require 'colorize'

#set boolean hash for playing_game
playing_game = true
players = {}

# starts the game
while playing_game
# if the player guesses incorrectly
  secret_number = (1..10).to_a.sample
  guessed = false
# adds name to an array
  $stdout.print('Name? ')
  player = $stdin.gets.chomp
  players[player] = []

  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

  while !guessed
# while your guess is incorrect...
    $stdout.print('> ')
    guess = $stdin.gets.to_i
    players[player].push(guess)
# if you guess correctly...
    if secret_number == guess
      guessed = true
    elsif secret_number > guess
      guessed = false
      $stdout.puts("#{guess}? Too low, try again!".red)
    elsif secret_number < guess
      guessed = false
      $stdout.puts("#{guess}? Too high, try again!".red)
    else
      $stdout.puts("#{guess}? Try again!".red)
    end

  end

  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)
# if user wants to play again; giving a y, Y, or yes response...
  $stdout.puts('New Game?')
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
end

$stdout.puts('Goodbye!')

