# Part 3
gun_fight_over = false

while (gun_fight_over == false)
  $stdout.puts("Freeze! Who are you?")
  name = $stdin.gets.chomp.downcase

  if name == "(zap)"
    x = 0
    while (x < 20)
      $stdout.puts("zap")
      x = x + 1
    end
    gun_fight_over = true

  elsif name == "han solo"
    x = 0
    $stdout.puts("You are mine at last, Solo!")
    while (x < 20)
      $stdout.puts("zap")
      x = x + 1
    end

    rand_num = rand(2)
    $stdout.puts(rand_num)
    if rand_num == 0
      $stdout.puts("Solo is caught! Jabba the Hutt will pay handsomely...")
      gun_fight_over = true
    else
      $stdout.puts("I'll get you next time, Solo!")
    end

  else
    $stdout.puts("You must die! (zap zap kaboom)")
  end
end
