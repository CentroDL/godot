def get_answer_to(question)
  $stdout.puts(question)
  user_answer = $stdin.gets.chomp.downcase + "!"
  return user_answer
end

brian_fav_song = get_answer_to("what's your favorite song, Brian?")

$stdout.puts("Brian's favorite song is #{brian_fav_song}.")

kristens_fav_song = get_answer_to("what's your favorite song, Kristen?")

$stdout.puts("Kristen's favorite song is #{kristens_fav_song}.")

