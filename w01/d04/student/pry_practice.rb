# brings in the ruby library pry, which gives us the binding.pry method

require 'pry'

producer = "Travis"

# binding.pry pauses the program and throws you into a pry session, so you can poke around
binding.pry

$stdout.puts("Our producer is #{producer}.")
