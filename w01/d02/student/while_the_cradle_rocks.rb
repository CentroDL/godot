jim_kevin_is_sleeping = true
<<<<<<< HEAD
phils_accomplishments = ""

while(jim_kevin_is_sleeping == true)
  $stdout.puts("Phil want have you accomplished?")
  new_accomplishment = $stdin.gets.chomp

  if phils_accomplishments.length == 0
    phils_accomplishments = "#{new_accomplishment}"
  else
    phils_accomplishments = "#{new_accomplishment} and #{phils_accomplishments}"
  end

  $stdout.puts("Is Jim-Kevin still asleep?(y/n)")
  still_asleep = $stdin.gets.chomp.downcase

  if still_asleep == "y"
    jim_kevin_is_sleeping = true
  else
    jim_kevin_is_sleeping = false
  end
end

$stdout.puts(phils_accomplishments)
=======
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
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
