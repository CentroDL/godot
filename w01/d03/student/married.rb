script = "Opening theme and titles.\n"

$stdout.puts("Is peggy whinning about something?(yes/no)")
is_peggy_whinning = $stdin.gets.chomp.downcase

if is_peggy_whinning == "yes"
  script += "Al is mean to her.\n"
else
  script += "The kids start to whine.\n"
  script += "Al is mean to them.\n"
end

script += "Roll credits."

# print out the completed script
$stdout.puts("OK, here is your script:")
$stdout.puts(script)
