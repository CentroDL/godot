# *Read* through the following code
# Write comments above *each line* explaining what it does
require 'colorize'


# Methods
min = 1
max = 10

def generate_random_number
  (min..max).to_a.sample
end

def alert(message)
  $stdout.puts(message.green)
end

def warn(message)
  $stdout.puts(message.red)
end

def ask(question)
  $stdout.puts(question)
  $stdout.print('> ')
  $stdin.gets.chomp
end

# Main Program

players = {}

loop do
  secret_number = generate_random_number
  player = ask('Name? ')
  players[player] = []
  alert("I\'m thinking of a number between #{min} and #{max}.")

  loop do
    guess = ask('Can you guess it?').to_i
    players[player].push(guess)
    break if secret_number == guess
    warn("#{guess}? Try again!")
  end

  alert("Great job, #{player}!")
  alert("You guessed in #{players[player].size} guesses.")
  choice = ask('New Game? y/n').downcase
  break if choice.start_with?('n')
end

alert('Goodbye!')
