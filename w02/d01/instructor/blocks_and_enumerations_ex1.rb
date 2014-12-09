
# Strings and Arrays
#
# 1. Write the Ruby to split the string `contenders` into an array of 4 items.

$stdout.puts("Strings 1: ")
contenders = "Alabama, Florida State, Oregon, Ohio State"
$stdout.puts(contenders.split(', '))

# 2. Write the Ruby to turn the array `contenders` into the string:
#    "Alabama, Florida State, Oregon, Ohio State are in the playoffs."

$stdout.puts("Strings 2: ")
contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
$stdout.puts(contenders.join(', ') + " are in the playoffs.")

# Data Structures
#
# Write the Ruby to discover what type of data structure the variable
# `contenders` is.

$stdout.puts("Data Structures: ")
$stdout.puts(contenders.class)

# Arrays
#
# 1. Use Ruby to create an array named `contenders` in TWO DIFFERENT WAYS with
#    the following items:
#      a. "Alabama"
#      b. "Florida State"
#      c. "Texas Christian University (TCU)"
#      d. "Baylor"

$stdout.puts("Arrays 1: ")
$stdout.puts(contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"])
$stdout.puts(contenders = Array.new(["Alabama", "Florida State", "Oregon", "Ohio State"]))

# 2. Access the 3rd item in the array `contenders`.

$stdout.puts("Arrays 2: ")
$stdout.puts(contenders[2])

# 3. Set the 4th item as "Texas Christian University (TCU),"
#    and the 3rd item as "Oregon."

$stdout.puts("Arrays 3: ")
$stdout.puts(contenders[3] = "Texas Christian University (TCU)")
$stdout.puts(contenders[2] = "Oregon")

# 4. Print the number of items in the array.

$stdout.puts("Arrays 4: ")
$stdout.puts(contenders.length)

# 5. Remove the last item in the array, then add another item to the end of the
#   array that is the string "Ohio State."

$stdout.puts("Arrays 5: ")
$stdout.puts(contenders.pop)
$stdout.puts(contenders.push("Ohio State")) # or contenders << "Ohio State"

# 6. Add the number 1 to the beginning of the array, then remove the first item
#    in the array and print it.

$stdout.puts("Arrays 6: ")
$stdout.puts(contenders.unshift(1))
$stdout.puts(contenders.shift)

# Hashes
#
# 1. Use Ruby to create a "hash" named `contenders` with the pairs:
#      a. "Alabama" and "SEC"
#      b. "Florida State" and "ACC"
#      c. "Texas Christian University (TCU)" and "Big 12"
#      d. "Baylor" and "Big 12"
#      e. "Oregon" and "Pac-12"
#      f. "Ohio State" and "Big Ten"

$stdout.puts("Hashes 1: ")
contenders = {
  "Alabama"       => "SEC",
  "Florida State" => "ACC",
  "Texas Christian University (TCU)" => "Big 12",
  "Baylor"        => "Big 12",
  "Oregon"        => "Pac-12",
  "Ohio State"    => "Big Ten"
}
$stdout.puts(contenders)

# 2. Access the value with the key "Baylor."

$stdout.puts("Hashes 2: ")
$stdout.puts(contenders["Baylor"])

# 3. Set the value with the key "Ohio State" to "Big 10."

$stdout.puts("Hashes 3: ")
$stdout.puts(contenders["Ohio State"] = "Big 10" )

# 4. List the unique teams (keys) in the hash. List the unique values
#    (conferences) in the hash.

$stdout.puts("Hashes 4: ")
$stdout.puts(contenders.keys.uniq)
$stdout.puts(contenders.values.uniq)

# Loops
#
# 1. Use a Ruby while loop to print out every item in an array in all capitals.

$stdout.puts("Loops 1: ")
contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
i = 0
while i < contenders.length
  $stdout.puts(contenders[i])
  i += 1
end

# 2. Use a basic Ruby loop (loop do; ... end) and a break statement to do the
#    above.

$stdout.puts("Loops 2: ")
contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
i = 0
loop do
  break if i >= contenders.length
  $stdout.puts(contenders[i])
  i += 1
end

# Methods
#
# Define a new method that takes an array of strings as input. It prints to the
# standard output every item in the array followed by the words: " might win.",
# unless the string's contents is "Ohio State", in which case it adds the words
# " will win!". Finally, it returns the number of items in the array.

$stdout.puts("Methods: ")
def print_teams(teams)
  i = 0
  while i < teams.length
    team = teams[i]
    if team != "Ohio State"
      $stdout.puts(team + " might win.")
    else
      $stdout.puts(team + " will win!")
    end
    i += 1
  end
end

contenders = ["Alabama", "Florida State", "Oregon", "Ohio State"]
print_teams(contenders)
