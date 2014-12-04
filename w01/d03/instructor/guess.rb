SECRET_NUMBER = 7
guessed = false
guesses = []
$stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

while !guessed
  guess = $stdin.gets.to_i
  guesses.push(guess)
  if SECRET_NUMBER == guess
    guessed = true
  else
    $stdout.puts("#{guess}? Try again!")
  end
end

$stdout.puts("Great job! It took you #{guesses.length} tries")
