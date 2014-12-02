number = 100

while(number > 0)
  lyric = "#{number} bottles of beer on the wall. #{number} bottles of beer. Take one down pass it around #{number -1} bottles of beer on the wall."
  $stdout.puts(lyric)
  number = number - 1
end
