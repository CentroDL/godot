# Brings in the ruby library of pry
# Which gives us binding.pry
require 'pry'

producer = "Travis"

# binding.pry pauses the program and throws you into a
# pry session to play around(i.e. terminal pry)
binding.pry

$stdout.puts("Our producer is #{producer}.")
