
# Strings and Arrays
#
# 1. Write the Ruby to split the string `contenders` into an array of 4 items.
puts "Part 1"
contenders = "Alabama, Florida State, Oregon, Ohio State"
contenders_arr = contenders.split(", ")
puts contenders_arr
puts "Contenders array is of type #{contenders_arr.class}\n\n"

# 2. Write the Ruby to turn the array `contenders` into the string:
#    "Alabama, Florida State, Oregon, Ohio State are in the playoffs."

puts "Part 2"
contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
$stdout.puts("#{contenders.join(", ")} are in the playoffs.")

# Data Structures
#
# Write the Ruby to discover what type of data structure the variable
# `contenders` is.
puts "Contenders is an object of type #{contenders.class}"
# Arrays
#
# 1. Use Ruby to create an array named `contenders` in TWO DIFFERENT WAYS with
#    the following items:
#      a. "Alabama"
#      b. "Florida State"
#      c. "Texas Christian University (TCU)"
#      d. "Baylor"
puts "\nArrays"
contenders = [ "Alabama", "Florida State", "Texas Christian University (TCU)", "Baylor"]
contenders = Array.new("Alabama", "Florida State", "Texas Christian University (TCU)", "Baylor")
puts contenders
# 2. Access the 3rd item in the array `contenders`.
puts contenders[2]

# 3. Set the 4th item as "Texas Christian University (TCU),"
#    and the 3rd item as "Oregon."
contenders[3] = "Texas Christin University (TCU)"
contenders[2] = "Oregon"

# 4. Print the number of items in the array.

# 5. Remove the last item in the array, then add another item to the end of the
#   array that is the string "Ohio State."

# 6. Add the number 1 to the beginning of the array, then remove the first item
#    in the array and print it.

# Hashes
#
# 1. Use Ruby to create a "hash" named `contenders` with the pairs:
#      a. "Alabama" and "SEC"
#      b. "Florida State" and "ACC"
#      c. "Texas Christian University (TCU)" and "Big 12"
#      d. "Baylor" and "Big 12"
#      e. "Oregon" and "Pac-12"
#      f. "Ohio State" and "Big Ten"

# 2. Access the value with the key "Baylor."

# 3. Set the value with the key "Ohio State" to "Big 10."

# 4. List the unique teams (keys) in the hash. List the unique values
#    (conferences) in the hash.

# Loops
#
# 1. Use a Ruby while loop to print out every item in an array in all capitals.

# 2. Use a basic Ruby loop (loop do; ... end) and a break statement to do the
#    above.

# Methods
#
# Define a new method that takes an array of strings as input. It prints to the
# standard output every item in the array followed by the words: " might win!",
# unless the string's contents is "Ohio State", in which case it adds the words
# " will win!". Finally, it returns the number of items in the array.
