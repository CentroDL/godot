# Assigns the secret_number to the integer value "7"
SECRET_NUMBER = 7
# assigns a boolean value to the "guessed" variable
guessed = false
#  prompts user for a number
$stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')
# runs loop until correct number is given
while !guessed
  guess = $stdin.gets.to_i
  if SECRET_NUMBER == guess
    guessed = true
  else
    $stdout.puts("#{guess}? Try again!")
  end
end

$stdout.puts('Great job!')
