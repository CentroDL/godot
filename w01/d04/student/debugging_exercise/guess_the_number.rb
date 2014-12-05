require 'pry'
<<<<<<< HEAD
=======

>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
secret = rand(1..5)

puts "Guess a number between 1 and 5"
guess = gets.chomp.to_i

binding.pry

while secret != guess
  binding.pry
  if secret <  guess
    puts "Too high! Guess again:"
  else
    puts "Too low! Guess again:"
  end
<<<<<<< HEAD
  guess = gets.chomp.to_i
  binding.pry
=======

    guess = gets.chomp.to_i
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
end

puts "Congrats! Do you want a cookie?!?!?!"



