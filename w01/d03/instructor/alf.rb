# start a script string
script = "Opening theme and titles.\n"

script += "ALF has a conversation with his family and hatches a plan.\n"

$stdout.puts("Does ALF pretend to be a human?")
pretends_to_be_human = $stdin.gets.chomp

if pretends_to_be_human == "yes"
  script += "ALF puts on a trench coat and wanders around.\n"
  script += "ALF narrowly avoids being discovered.\n"
else
  script += "ALF makes a new friend.\n"
end

while (true)
  $stdout.puts("Does ALF try to eat the cat?")
  eat_cat = $stdin.gets.chomp
  if(eat_cat == "yes")
    script += "ALF tries to eat the cat. His family catches him.\n"
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