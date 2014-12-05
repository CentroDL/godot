require 'pry'
# Nickname Generator Project

first_name_list = ["Bumblebee", "Banderscoop", "Broccoli", "Rinkydink", "Bombadil", "Boilerduck", "Bandicoot", "Fragglerock", "Muffinmitts", "Crumplesack", "Congleton", "Blubberbrains", "Buffalo", "Benadryl", "Butterfree", "Burberry", "Whippersnatch", "Buttermilk", "Beezlebub", "Budapest", "Boilerdang", "Blubberwhale", "Bumberstump", "Bulbasaur", "Cogglesnatch", "Liverswort", "Bodybuild", "Johnnycash", "Burgerking", "Bonaparte", "Bunsenburner", "Billiardball", "Baseballmitt", "Blubberbett", "Baseballbat", "Rumblesack", "Barister", "Danglerack", "Rinkydink", "Bombadil", "Honkytonk", "Billyray", "Bumbleshack", "Snorkeldink", "Anglerfish", "Beetlejuice", "Bedlington", "Bandicoot", "Boobytrap", "Bentobox", "Pallettown", "Wimbledon", "Hairyhog", "Buttercup", "Blasphemy", "Syphilis", "Snorkeldink", "Brandenburg", "Barbituate", "Snozzlebert", "Tiddleywomp", "Bouillabaisse", "Wellington", "Benetton", "Bendandsnap", "Timothy", "Brewery", "Bentobox", "Brandybuck"]

last_name_list = ["Coddleswort", "Curdlesnoot", "Calldispatch", "Humperdinck", "Rivendell", "Cuttlefish", "Lingerie", "Vegemite", "Ampersand", "Cumberbund", "Candycrush", "Clombyclomp", "Cragglethatch", "Nottinghill", "Cabbagepatch", "Camouflage","Creamsicle", "Curdlemilk", "Upperclass", "Frumblesnatch", "Crumplehorn", "Talisman", "Candlestick", "Chesterfield", "Bumbersplat", "Scratchnsniff", "Snugglesnatch", "Charizard", "Carrotstick", "Cumbertoot", "Crackerknack", "Crucifix", "Cuckatoo", "Crackletot", "Collywog", "Gigglesnort", "Capncrunch", "Covergirl", "Cumbersnatch", "Countryside","Coggleswort", "Splishnsplash", "Copperwire", "Animorph", "Curdledmilk", "Cheddarcheese", "Cottagecheese", "Crumplehorn", "Snickersbar", "Banglesnatch", "Stinkyrash", "Camelhump", "Chickenbroth", "Concubine", "Candygram", "Moldyspore", "Chuckecheese", "Cankersore", "Crimpysnitch", "Wafflesmack", "Chowderpants", "Toodlesnoot", "Clavichord", "Cuckooclock", "Oxfordshire", "Cumbersome", "Chickenstrips", "Battleship", "Commonwealth", "Cunningsnatch", "Custardbath", "Kryptonite"]

#MY GET ANSWER TO METHOD
def get_answer_to (question)
  $stdout.puts(question)
  user_answer = $stdin.gets.chomp
  return user_answer
end


bombadil_index = first_name_list.index("Bombadil")
$stdout.puts(first_name_list[bombadil_index])

snorkeldink_index = first_name_list.index("Snorkeldink")
first_name_list.delete_at(snorkeldink_index)

first_name_list.push("Peter")

brandybuck_index = first_name_list.index("Brandybuck")
$stdout.puts(first_name_list[brandybuck_index])

last_name_list.insert(rand(0..last_name_list.count - 1), "Vander Hoop")

muffinmitts_index = first_name_list.index("Muffinmitts")
first_name_list.delete_at(muffinmitts_index)

last_name_list.shift

scratchnsniff_index = last_name_list.index("Scratchnsniff")
$stdout.puts("Scratchnsniff is located at index #{scratchnsniff_index} in the array")


def generate_random_nickname(list1, list2)
  rand_first_name = list1[rand(0..(list1.count - 1))]
  rand_last_name = list2[rand(0..(list2.count - 1))]
  return "Your nickname is #{rand_first_name} #{rand_last_name}"
end

your_name = generate_random_nickname(first_name_list, last_name_list)
$stdout.puts(your_name)


willing_participant = true

while willing_participant
  $stdout.puts("Hi, would you like to generate a nickname?(yes/no)?")
  answer = $stdin.gets.chomp.downcase

  if answer == "yes"
    new_name = generate_random_nickname(first_name_list, last_name_list)
    $stdout.puts(new_name)
  else
    $stdout.puts("Come back anytime.")
    willing_participant = false
  end
end
