# *Read* through the following code
# Write comments above *each line* explaining what it does

require 'colorize'

playing_game = true
players = {}

while playing_game

  secret_number = (1..10).to_a.sample
  guessed = false

  $stdout.print('Name? ')
  player = $stdin.gets.chomp
  players[player] = []

  $stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

  while !guessed

    $stdout.print('> ')
    guess = $stdin.gets.to_i
    players[player].push(guess)

    if secret_number == guess
      guessed = true
    else
      $stdout.puts("#{guess}? Try again!".red)
    end

  end

  $stdout.puts("Great job, #{player}! You guessed in #{players[player].size} guesses.".green)

  $stdout.puts('New Game?')
  playing_game = $stdin.gets.chomp.downcase.start_with?('y')
end

$stdout.puts('Goodbye!')

