subtouch## Nickname Generator

![Custom nickname name tag](http://www.incrediblethings.com/wp-content/uploads/2012/06/custom-nickname.jpg)

## Directions

You've been tasked with writing a program that generates any number of random nicknames for the user. This program will run until the user decides they no longer want to be presented with a new nickname.

#### Completion

**Finish at least the first 3 parts.** As always: more is better, but healthy living is best. Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

## Part 1: Setup a Helper Method

__File name:__ `nickname_generator.rb`

1. Create a `nickname_generator.rb` file in today's student directory.
1. Copy and paste the starter data below into your `nickname_generator.rb` file.
1. To start, write a method `get_answer_to` which takes a single argument as a string, and returns whatever the user enters via standard in. You will use this method to get information from the user.

## Part 2: Array Practice

1. Access "Bombadil" from the `first_name list` (see below) and save it in a variable.
1. Remove "Snorkeldink" from the `first_name_list`
1. Add "Peter" to the end of `first_name_list`
1. Access "Brandybuck" from the `first_name_list`
1. Insert the name "Vander Hoop" somewhere in the middle of `last_name_list`
1. Remove "Muffinmitts" from the `first_name_list`
1. Permanently remove the first entry in `last_name_list` using a Ruby Array method.
1. Find out the index value of "Scratchnsniff" in `last_name_list`

## Part 3: Building the Program

Using your newfound understanding of methods and arrays, write a method, `generate_random_nickname`, which returns the combination of 1 randomly selected name from `first_name_list` and 1 randomly selected name from `last_name_list` to form a full name.

Example usage:

```ruby
generate_random_nickname # => "Burgerking Bendandsnap"
generate_random_nickname # => "Honkytonk Chesterfield"
```

Now create a program that asks the user if they would like to generate a random name. As long as they keep saying yes, generate a new name for them and print it to the screen. If they say no, tell them to "Come back anytime."

## Part 4: Make it Better

Alter `generate_random_nickname` to take a single integer as input, and if that integer is larger than 2, generate a nickname of that alternates between selecting names from the first name list and the last name list until the nickname is x words long.

Example Usage:

```ruby
generate_random_nickname(5) # => "Banderscoop Wafflesmack Boilerdang Whippersnatch Rumblesnack"
```

```ruby
first_name_list = ["Bumblebee", "Banderscoop", "Broccoli", "Rinkydink", "Bombadil", "Boilerduck", "Bandicoot", "Fragglerock", "Muffinmitts", "Crumplesack", "Congleton", "Blubberbrains", "Buffalo", "Benadryl", "Butterfree", "Burberry", "Whippersnatch", "Buttermilk", "Beezlebub", "Budapest", "Boilerdang", "Blubberwhale", "Bumberstump", "Bulbasaur", "Cogglesnatch", "Liverswort", "Bodybuild", "Johnnycash", "Burgerking", "Bonaparte", "Bunsenburner", "Billiardball", "Baseballmitt", "Blubberbett", "Baseballbat", "Rumblesack", "Barister", "Danglerack", "Rinkydink", "Bombadil", "Honkytonk", "Billyray", "Bumbleshack", "Snorkeldink", "Anglerfish", "Beetlejuice", "Bedlington", "Bandicoot", "Boobytrap", "Bentobox", "Pallettown", "Wimbledon", "Hairyhog", "Buttercup", "Blasphemy", "Syphilis", "Snorkeldink", "Brandenburg", "Barbituate", "Snozzlebert", "Tiddleywomp", "Bouillabaisse", "Wellington", "Benetton", "Bendandsnap", "Timothy", "Brewery", "Bentobox", "Brandybuck"]

last_name_list = ["Coddleswort", "Curdlesnoot", "Calldispatch", "Humperdinck", "Rivendell", "Cuttlefish", "Lingerie", "Vegemite", "Ampersand", "Cumberbund", "Candycrush", "Clombyclomp", "Cragglethatch", "Nottinghill", "Cabbagepatch", "Camouflage","Creamsicle", "Curdlemilk", "Upperclass", "Frumblesnatch", "Crumplehorn", "Talisman", "Candlestick", "Chesterfield", "Bumbersplat", "Scratchnsniff", "Snugglesnatch", "Charizard", "Carrotstick", "Cumbertoot", "Crackerknack", "Crucifix", "Cuckatoo", "Crackletot", "Collywog", "Gigglesnort", "Capncrunch", "Covergirl", "Cumbersnatch", "Countryside","Coggleswort", "Splishnsplash", "Copperwire", "Animorph", "Curdledmilk", "Cheddarcheese", "Cottagecheese", "Crumplehorn", "Snickersbar", "Banglesnatch", "Stinkyrash", "Camelhump", "Chickenbroth", "Concubine", "Candygram", "Moldyspore", "Chuckecheese", "Cankersore", "Crimpysnitch", "Wafflesmack", "Chowderpants", "Toodlesnoot", "Clavichord", "Cuckooclock", "Oxfordshire", "Cumbersome", "Chickenstrips", "Battleship", "Commonwealth", "Cunningsnatch", "Custardbath", "Kryptonite"]
```
