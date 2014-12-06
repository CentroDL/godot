require 'colorize'
def ask(question)
  $stdout.puts('>> ' + question)
  $stdout.print('< ')
  $stdin.gets.chomp
end


#THIS IS WHERE CHATTING STARTS
name = ask("What is your name?")
answer = ask("Hi there #{name}, I'm Eliza! Let's have a chat.")

#responses
answer_hash = {
  "Hello Eliza." => "That's very interesting, #{name}.",
  "Hey Eliza, I like turtles." => "That's very intersting, tell me more.",
  "Goodbye" => "Goodbye"
}

#IF WE SAY "Goodbye" keep talking
while answer != "Goodbye"

  #if the answer_hash has your answer as a key
  if answer_hash.has_key?(answer)
  elizas_answer = answer_hash[answer]
  answer = ask(elizas_answer)
  #if we dont tell them they're crazy and get a response
  else
    answer = ask("I don't know how to respond to that.")
  end
end

puts "LE END"


