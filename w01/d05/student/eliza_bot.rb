#Eliza the chat bot
#METHODS
def check_for_period(response)
  is_there_period = response.end_with?(".")
  return is_there_period
end

def check_for_question_mark(response)
  is_there_question_mark = response.end_with?("?")
  return is_there_question_mark
end

def check_for_bang(response)
  is_there_bang = response.end_with?("!")
  return is_there_bang
end
#Generates ask method outputs a question and a newline also gets the users response
def talk(question)
  $stdout.puts(question)
  $stdout.print('>> ')
  $stdin.gets.chomp
end

# MAIN PROGRAM
$stdout.puts("Hi there, I'm Eliza! Let's have a chat.")
goodbye = false

while !goodbye

  response = $stdin.gets.chomp.downcase

  if response.split.include?("you")
    $stdout.puts("Are you talking about me?")

  elsif response.split.include?("your")
    $stdout.puts("Oh you are definitely talking about me.")

  elsif response.split.include?("eliza")
    $stdout.puts("Don't make me mad!")

  elsif check_for_question_mark(response)
    $stdout.puts("really? am I getting this? is it possible?")

  elsif check_for_period(response)
    $stdout.puts("my coding skills are awesome... period...")

  elsif check_for_bang(response)
    $stdout.puts("There is an EXCLAMATION!")

  elsif response.split.include?("goodbye")
    goodbye = true
  end
end


# .
# ?
# !
# YOU
#Eliza's final goodby statement
$stdout.puts("Finally... I was getting board talking to you.")
$stdout.puts("(disgusted face with slightly raised eyebrow emoji)")
