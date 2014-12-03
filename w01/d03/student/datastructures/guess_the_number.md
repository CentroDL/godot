# Guess the Number

- Create a new file called `guess_the_number.rb`
- Paste in the following code and then *read* it.
- Write a comment for *each line* explaining what it does

```
SECRET_NUMBER = 7
guessed = false

$stdout.puts('I\'m thinking of a number between 1 and 10. Can you guess it?')

while !guessed
  guess = $stdin.gets.to_i
  if SECRET_NUMBER == guess
    guessed = true
  else
    $stdout.puts("#{guess}? Try again!")
  end
end

$stdout.puts('Great job!')
```

Work with a partner to "Ping Pong".
Take turns reading each line of code outloud and articulate what each line does.
Help to correct eachother if you're unsure of a line.
