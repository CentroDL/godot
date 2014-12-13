$stdout.puts("(beep-boop whrrrrrr bleep)")
$stdout.puts("Welcome to the R2D2 calculator!")
input = ""
while(input != "q")
  $stdout.puts("Please enter which operator you would like to use ('+', '-', '*', '/'). Enter 'q' to exit.")
  input = $stdin.gets.chomp

  if input == "q"
    $stdout.puts("You have chosen to stop calculating.")
  else
    $stdout.puts("Please enter your first number:")
    num_1 = $stdin.gets.to_i
    $stdout.puts("Please enter your second number:")
    num_2 = $stdin.gets.to_i

    if input == "+"
      solution = num_1 + num_2
    elsif input == "-"
      solution = num_1 - num_2
    elsif input == "*"
      solution = num_1 * num_2
    elsif input == "/"
      solution = num_1 / num_2.to_f
    else
      $stdout.puts("(whheeaaarrrrr! beee-ooohhh) You did not enter a viable operator!")
      solution = "does not compute"
    end

    $stdout.puts("The solution to #{num_1} #{input} #{num_2} is #{solution}")
  end
end
