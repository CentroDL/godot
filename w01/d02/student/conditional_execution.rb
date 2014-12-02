dennis_is_a_quiet_fellow = true
an_ex_con = false

if an_ex_con
  $stdout.puts("Dennis can come over even ifthe baby is napping")
elsif dennis_is_a_quiet_fellow || an_ex_con
  $stdout.puts("We can do illegal things")
end

