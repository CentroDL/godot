<<<<<<< HEAD
# Brings in the ruby library of pry
# Which gives us binding.pry
=======
# brings in the ruby library pry, which gives us the binding.pry method

>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
require 'pry'

producer = "Travis"

<<<<<<< HEAD
# binding.pry pauses the program and throws you into a
# pry session to play around(i.e. terminal pry)
=======
# binding.pry pauses the program and throws you into a pry session, so you can poke around
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
binding.pry

$stdout.puts("Our producer is #{producer}.")
