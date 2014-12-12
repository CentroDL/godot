require 'pry'
hamlets = [
  "Laurence Olivier, 1948",
  "Grigori Kozintsev, 1964",
  "Tony Richardson, 1969",
  "Franco Zeffirelli, 1990",
  "Kenneth Branagh, 1996",
  "Michael Almereyda, 2000"
]

quotes_array = [
  ["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."],
  ["A little more than kin, and less than kind", "Hamlet - (Act I, Scene II)."],
  ["And it must follow, as the night the day, thou canst not then be false to any man", "Hamlet - (Act I, Scene III)"],
  ["This is the very ecstasy of love", "Hamlet - (Act II, Scene I)."],
  ["Brevity is the soul of wit", "Hamlet - (Act II, Scene II)."],
  ["Do you think I am easier to be played on than a pipe?", "Hamlet - (Act III, Scene II)."],
  ["Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love", "Hamlet - (Act II, Scene II)."],
  ["I will speak daggers to her, but use none", "Hamlet - (Act III, Scene II)."],
  ["In my mind's eye", "Hamlet - (Act I, Scene II)."],
  ["Neither a borrower nor a lender be; For loan oft loses both itself and friend, and borrowing dulls the edge of husbandry", "Hamlet - (Act I, Scene III)."],
  ["Rich gifts wax poor when givers prove unkind", "Hamlet - (Act III, Scene I)."],
  ["That it should come to this!", "Hamlet - (Act I, Scene II)."],
  ["The lady doth protest too much, methinks", "Hamlet - (Act III, Scene II)."],
  ["The plays the thing wherein I'll catch the conscience of the king", "Hamlet - (Act II, Scene II)."],
  ["There is nothing either good or bad, but thinking makes it so", "Hamlet - (Act II, Scene II)."],
  ["This above all: to thine own self be true", "Hamlet - (Act I, Scene III)."],
  ["Though this be madness, yet there is method int.", "Hamlet - (Act II, Scene II)."],
  ["What a piece of work is man! how noble in reason! how infinite in faculty! in form and moving how express and admirable! in action how like an angel! in apprehension how like a god! the beauty of the world, the paragon of animals! ", "Hamlet - (Act II, Scene II)."],
  ["When sorrows come, they come not single spies, but in battalions", "Hamlet - (Act IV, Scene V)."]
]

hamlets.each { |hm| puts "O! the venerable #{hm.split(',')[0]} starred as Hamlet in #{hm.split(',')[1].lstrip}"}

# Programatically convert the hamlets array into an array of arrays where the first element, name, is a string, and the second element, year, is an integer.
puts 'Hamlet Array of Arrays'
hamlets_map = hamlets.map { |h| [ h.split(',')[0], h.split(',')[1].to_i ] }

puts hamlets_map

hamlet_hash = hamlets_map.map { |h| {name: h[0], year: h[1]} }
puts 'Hamlet Hash'
puts hamlet_hash

#Programatically select all the Hamlets from the 1960's and assign them to an array called swingin_hamlets
swingin_hamlets = hamlet_hash.select { |h| h[:year].between?(1959,1970) }
puts 'Swingin Hamlets'
puts swingin_hamlets

future_hamlets = hamlet_hash.select { |h| h[:year] >= 2000 }

puts 'Future Hamlets', future_hamlets

# Convert the following quotes array into an array of hashes. Each hash should have the keys :quote, :play, :act and :scene
#["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."]
quotes_hash = quotes_array.map do |quote|
  { quote: quote[0],
    play: quote[1].split('-')[0].delete(' '),
    act: quote[1].split('-')[1].delete('(' ')' 'Act' 'Scene' '.' ' ').split(',')[0],
    scene: quote[1].split('-')[1].delete('(' ')' 'Act' 'Scene' '.' ' ').split(',')[1]}

end


# puts 'Quotes Hash', quotes_hash

quotes_hash.each do |quote|
  puts quote[:quote]
  puts "#{quote[:play]} - (Act #{quote[:act]}, Scene #{quote[:scene]})."
end










