jim_kevin_is_sleeping = true
phils_accmplishments = ""
while (jim_kevin_is_sleeping)
  $stdout.puts("What errand is Phil running?")
  new_errand = $stdin.gets.chomp
  phils_accmplishments = phils_accmplishments + new_errand

  $stdout.puts("Phil, is Jim-Kevin still sleeping (yes/no)?")
  answer = $stdin.gets.chomp

  if answer == "no"
    jim_kevin_is_sleeping = false
  end

  $stdout.puts(phils_accmplishments)
end
