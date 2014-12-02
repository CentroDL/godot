number = 31592

while (number > 200)
  lyric = "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down pass it around. #{number} bottles of beer on the wall."
  $stdout.puts(lyric)
  number = number - 1
end
