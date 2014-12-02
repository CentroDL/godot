$stdout.puts "What is the current temperature?"
temperature = $stdin.gets.chomp.to_i

$stdout.puts "Is the A/C on? (Yes/No)"
ac_on = $stdin.gets.chomp.downcase

$stdout.puts "What is your desired temp?"
desired = $stdin.gets.chomp.to_i

if ac_on == "yes" && temperature > desired
  $stdout.puts "Leave the AC on Dog."
elsif ac_on == "yes" && temperature < desired
  $stdout.puts "It's really cold in here. Turn off the AC"
elsif ac_on != "yes" && temperature > desired
  $stdout.puts "Turn the AC on!"

end
