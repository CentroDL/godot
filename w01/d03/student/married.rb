script = "Opening theme and titles.\n"

<<<<<<< HEAD
$stdout.puts("Is peggy whinning about something?(yes/no)")
is_peggy_whinning = $stdin.gets.chomp.downcase

if is_peggy_whinning == "yes"
=======
# prompt for user input for a conditional
$stdout.puts("Is Peggy whining about something?")

# get user input and run the conditional
peggy_is_whining = $stdin.gets.chomp
if peggy_is_whining == "yes"
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
  script += "Al is mean to her.\n"
else
  script += "The kids start to whine.\n"
  script += "Al is mean to them.\n"
end

<<<<<<< HEAD
=======
# finish the script string
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
script += "Roll credits."

# print out the completed script
$stdout.puts("OK, here is your script:")
$stdout.puts(script)
