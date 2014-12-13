<<<<<<< HEAD
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

$stdout.puts("#{vladamir_putins_brain[:name]} loves #{vladamir_putins_brain[:fav_hobby]}\n")

batman = {
  :f_name => "Bruce",
  :l_name => "Wayne",
  :billionaire => true,
  :alter_ego => "Batman"
}

msg = "\n#{batman[:alter_ego]} is the secret identity of #{batman[:f_name]} #{batman[:l_name]},
a #{batman[:billionaire]} American billionaire, industrialist, and
philanthropist."

$stdout.puts(msg)

evil_villains = []
evil_villains.push("The Penguin")
evil_villains.push("The Joker")
evil_villains.push("The Riddler")
$stdout.puts(evil_villains)


sidekicks = [{
  :f_name => "Jason",
  :l_name => "Todd",
  :alter_ego => "Robin"
  },
  {
  :f_name => "Dick",
  :l_name => "Grayson",
  :alter_ego => "Robin"
  },
  {
  :f_name => "Tim",
  :l_name => "Drake",
  :alter_ego => "Robin"
  }]

origin = "\nHaving witnessed the murder of his parents as a
child, he swore revenge on #{evil_villains[1]}, an oath tempered
with a sense of justice with his best friend
#{sidekicks[0][:f_name]} #{sidekicks[1][:l_name]} otherwise known as #{sidekicks[1][:alter_ego]}"

$stdout.puts(origin)

=======
name = "vladamir putin"
launch_code = "a5Mjp257GHMGH23e5qxE"
fav_hobby = "Riding ponies"
prideful = true

#structured as a hash
vladimir_putins_brain = {:name => "vladamir putin", "launch_code" => "a5Mjp257GHMGH23e5qxE", :fav_hobby => "Riding ponies", "prideful" => true}

- Use pry to return the string "Riding ponies"
- Use pry to return the string "a5Mjp257GHMGH23e5qxE"
- Use pry to add the key-value pair "obsessive_crush" => "Condoleezza Rice"
- Use pry to add the key-value pair :torture_count => 931


$stdout.puts("#{vladimir_putins_brain[:name]} loves #{vladimir_putins_brain[:fav_hobby]}")
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
