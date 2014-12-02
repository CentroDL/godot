first_name = 'Bret Masterson'
second_name = 'Joy Schramm'
other_likes_count = 53

# Directions

# 1. uncomment the variable assignments above, and assign values of your own choosing.
# 2. use string interpolation to build a string similar to "John Thomas Suhar, Stephanie Shinn and 13 others like this."
# 3. print the string to the console using $stdout.puts()

string = "#{first_name}, #{second_name}, and #{other_likes_count} like this."
$stdout.puts(string)
