<<<<<<< HEAD
$stdout.puts("Hello, I am C-3P0, human-cyborg relations.")

$stdout.puts("And your name is?")
name = $stdin.gets.chomp.downcase
if name == "obi-wan kenobi"
  $stdout.puts("Oh, Marvelous! Simply Marvelous! Say hello to R2-D2; he has been looking all over for you!")
else
  $stdout.puts("It is a pleasure to meet you, #{name}. I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you?")
  response = $stdin.gets.chomp.downcase
  $stdout.puts(response)
  if(response.start_with?("y") && (response.length <= 3))
    $stdout.puts("Oh, Marvelous! Simply Marvelous! Say hello to R2-D2; he has been looking all over for you!")
  elsif(response.start_with?("n") && (response.length <= 2))
    $stdout.puts("I've really enjoyed speaking with you, #{name}, but if you'll please excuse me, I have to help my friend find someone named Obi-Wan Kenobi.")
    $stdout.puts("Well R2, I suppose we'll just have to keep looking. R2-D2: (Agreeable droid noises)")
  else
    $stdout.puts("I'm sorry, I didn't hear you correctly. I only respond to 'yes' or 'no'...")
    $stdout.puts("Well R2, I suppose we'll just have to keep looking. R2-D2: (Agreeable droid noises)")
  end
end
=======

#greetings ftom the cyborg
$stdout.puts("Hello, I am C-3P0, human cyborg relations.")
#request user's name
$stdout.puts("And your name is?")
  if name == "Obi-Wan Kenobi"
      $stdout.puts("Oh, marvelous! Simply marvelous! Say hello to R2-D2; he's been looking all over for you!")
  else name != "Obi-Wan Kenobi"
      $stdout.puts("It is a pleasure to meet you #{name}. I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you?")

  end
>>>>>>> d35bc6cb2e83a0ee4ea5b0136e1ee826c094bec5
