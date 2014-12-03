script = "Opening theme and titles.\n"

# prompt for user input for a conditional
$stdout.puts("Is Peggy whining about something?")

# get user input and run the conditional
peggy_is_whining = $stdin.gets.chomp
if peggy_is_whining == "yes"
  script += "Al is mean to Peggy.\n"
else
  script += "The kids start to whine.\n"
  script += "Al is mean to them.\n"
end

# finish the script string
script += "Roll credits."

# print out the completed script
$stdout.puts("OK, here is your script:")
$stdout.puts(script)