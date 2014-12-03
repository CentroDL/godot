jim_kevin_is_sleeping = true

phils_accomplishments = ""

while (jim_kevin_is_sleeping)
  $stdout.puts("What errand is Phil running?")
  new_errand = $stdin.gets.chomp
  phils_accomplishments = phils_accomplishments + new_errand

  $stdout.puts("Is Jim-Kevin still sleeping? (yes/no)")
  answer = $stdin.gets.chomp

  if answer == "no"
    jim_kevin_is_sleeping = false
  end

end

$stdout.puts(phils_accomplishments)



