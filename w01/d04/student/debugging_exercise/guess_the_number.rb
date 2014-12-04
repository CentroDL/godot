secret = rand(1..5)

puts "Guess a number between 1 and 5"
guess = gets.chomp.to_i

while secret != guess
  if secret <  guess
    puts "Too high! Guess again:"
  else
    puts "Too low! Guess again:"
  end
  guess = gets.chomp
end

puts "Congrats! Do you want a cookie?!?!?!"
