Obi_Wan_Kenobi = true

#greeting from the cyborg
$stdout.puts("Hello, I am C-3P0, human-cyborg relations.")
#request user's name
$stdout.puts("And your name is?")
	if name == "Obi_Wan_Kenobi"
		$stdout.puts("Oh, marvelous! Simply marvelous! Say hello to R2-D2; he's been looking all over for you!")
#if not:
	else name != "Obi-Wan Kenobi"
		$stdout.puts("It is a pleasure to meet you, #{name}. I'm terribly sorry for prying, but you don't by any chance go by the alias of Obi-Wan Kenobi, do you?")
	

end