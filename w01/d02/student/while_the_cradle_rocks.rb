jim_kevin_is_sleeping = true
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
