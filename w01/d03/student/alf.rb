script = "Opening theme and titles.\n"
script += "ALF has a conversation with his family, and hatches a plan.\n"

$stdout.puts("Does ALF pretend to be human?")
pretend_human = $stdin.gets.chomp.downcase

if pretend_human == "yes"
  script += "ALF puts on a trench coat and wanders around.\n"
  script += "ALF narrowly avoids being discovered.\n"
else
  script += "ALF makes a new friend.\n"
end

$stdout.puts("Does Alf try to eat the cat?(yes/no)")
bad_alf = $stdin.gets.chomp.downcase

while(bad_alf == "yes")
  script += "ALF tries to eat the cat. His family catches him.\n"
  $stdout.puts("Does Alf try to eat the cat?(yes/no)")
  bad_alf = $stdin.gets.chomp.downcase
end

script += "ALF learns a lesson about trust, and everyone laughs.\n"
script += "Roll credits"

$stdout.puts("OK, here is your script:")
$stdout.puts(script)
