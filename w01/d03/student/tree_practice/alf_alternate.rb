script = "Opening theme and titles.\n"

# prompt for user input for a conditional
script += "ALF has a conversation with his family, and hatches a plan. \n"
$stdout.puts("Does ALF pretend to be human?")

# get user input and run the conditional
alf_pretend_human = $stdin.gets.chomp
if alf_pretend_human == "yes"
  script += "ALF puts on a trench coat and wanders around.\n"
  script += "ALF narrowly avoids being discovered.\n"
else
  script += "ALF makes a new friend.\n"
end

# get user input and run the conditional

while (true)
  #loop with question
  $stdout.puts("Does ALF try to eat the cat?\n")
  alf_eat_cat = $stdin.gets.chomp
  if(alf_eat_cat == "yes")
  script += "ALF tries to eat the cat. His family catches him.\n"

  $stdout.puts("Does ALF try to eat the cat?\n")
  alf_eat_cat = $stdin.gets.chomp
else
  break
end
end

  script += "ALF learns a lesson about trust, and everyone laughs.\n"

# finish the script string
script += "Roll credits."

# print out the completed script
$stdout.puts("OK, here is your script:")
$stdout.puts(script)
