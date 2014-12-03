# sets a secret number to 7
SECRET_NUMBER = rand(1..10)
# sets correct to false
correct = false
guesses =[]
# output statement asking user for a guess
$stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

# start of while loop runs when guessed is false
while !correct
  # gets the users guess
  guess = $stdin.gets.to_i
  guesses.push(guess)
  # checks to see if guess equals secret number
  if SECRET_NUMBER == guess
    #re-assigns correct to true if num is correct
    correct = true
  elsif guess < SECRET_NUMBER
      $stdout.puts("you are too low")
  else
      $stdout.puts("you are too high")
  end #end if
end #end while

# outputs to user good job
$stdout.puts("Great job! But it took you #{guesses.length} tries...")
