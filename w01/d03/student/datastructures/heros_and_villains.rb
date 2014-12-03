vladamir_putins_brain = {
  :name => "Vladamir Putin",
  :launch_code => "a5Mjp257GHMGH23e5qxE",
  :fav_hobby => "Riding ponies",
  :prideful => true
}

$stdout.puts(vladamir_putins_brain[:fav_hobby])
$stdout.puts(vladamir_putins_brain[:launch_code])
vladamir_putins_brain[:obsessive_crush] = "Condoleezza Rice"
vladamir_putins_brain[:torture_count] = 931

$stdout.puts("#{vladamir_putins_brain[:name]} loves #{vladamir_putins_brain[:fav_hobby]}")
