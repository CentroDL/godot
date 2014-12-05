#Eliza the chat bot
#METHODS
def generate_random_number
  (1..10).to_a.sample
end

#Generates ask method outputs a question and a newline also gets the users response
def ask(question)
  $stdout.puts(question)
  $stdout.print('>> ')
  $stdin.gets.chomp
end

# MAIN PROGRAM
$stdout.puts("Hi there, I'm Eliza! Let's have a chat.")
players = {}

#creates a loop
loop do
  secret_number = generate_random_number
  player = ask('Name? ')
  players[player] = []
  alert('I\'m thinking of a number between 1 and 10.')

# Imbedded loop
  loop do
    guess = ask('Can you guess it?').to_i
    players[player].push(guess)
    break if secret_number == guess
    warn("#{guess}? Try again!")
  end #end of inner loop
  alert("Great job, #{player}!")
  alert("You guessed in #{players[player].size} guesses.")
  choice = ask('New Game? y/n')
  break if choice.start_with?('n')
end # end of outer loop

#Eliza's final goodby statement
$stdout.puts("Finally... I was getting board talking to you.")
$stdout.puts("(disgusted face with slightly raised eyebrow emoji)")
