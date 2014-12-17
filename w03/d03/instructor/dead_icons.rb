require 'pry'

dead_icons = [
  {
    name: "Jim Morrison a.k.a. The Lizard King",
    occupation: "musician",
    age_at_death: 27,
    death_disputed: true,
    testaments_to_greatness: [
      "LA Woman (1970)",
      "The Doors (1967)",
      "Strange Days (1968)"
    ]
  },
  {
    name: "Chris Farley",
    occupation: "actor",
    age_at_death: 33,
    death_disputed: false,
    testaments_to_greatness: [
      "Tommy Boy (1995)",
      "Saturday Night Live (1990 - 1995)",
      "Dirty Work (1998)"
    ]
  },
  {
    name: "Tupac Shakur a.k.a. 2pac",
    occupation: "musician",
    age_at_death: 25,
    death_disputed: true,
    testaments_to_greatness: [
      "All Eyez On Me (1996)",
      "Me Against the World (1995)"
    ]
  },
  {
    name: "Robin Williams",
    occupation: "actor",
    age_at_death: 63,
    death_disputed: false,
    testaments_to_greatness: [
      "Mrs. Doubtfire (1993)",
      "Good Will Hunting (1997)",
      "Dead Poets Society (1989)",
      "Mork and Mindy (1978 - 1982)",
      "Hook (1991)"
    ]
  },
  {
    name: "Michael Jackson a.k.a. The King of Pop",
    occupation: "musician",
    age_at_death: 50,
    death_disputed: false,
    testaments_to_greatness: [
      "Thriller (1982)",
      "Bad (1987)",
      "Dangerous (1991)",
      "ABC (1970)",
    ]
  },
  {
    name: "Christopher Wallace a.k.a. The Notorious B.I.G.",
    occupation: "musician",
    age_at_death: 24,
    death_disputed: false,
    testaments_to_greatness: [
      "Ready to Die (1994)",
      "Life After Death (1997)"
    ]
  },
  {
    name: "Kurt Cobain",
    occupation: "musician",
    age_at_death: 27,
    death_disputed: false,
    testaments_to_greatness: [
      "Nevermind (1992)",
      "MTV Unplugged 1994 (1994)"
    ]
  },
  {
    name: "Jimi Hendrix",
    occupation: "musician",
    age_at_death: 27,
    death_disputed: false,
    testaments_to_greatness: [
      "Are You Experienced (1967)",
      "Axis: Bold as Love (1967)",
      "Electric Ladyland (1968)",
      "Band of Gypsies (1970)",
    ]
  },
  {
    name: "Janis Joplin",
    occupation: "musician",
    age_at_death: 27,
    death_disputed: true,
    testaments_to_greatness: [
      "Cheap Thrills (1992)",
      "Pearl (1971)",
    ]
  },
  {
    name: "Cass Elliot a.k.a. Mama Cass",
    occupation: "musician",
    rumored_cause_of_death: "ham sandwich",
    age_at_death: 32,
    testaments_to_greatness: [
      "If You Can Believe Your Eyes and Ears (1965)",
      "The Mamas & the Papas (1966)"
    ]
  }
]

# make an array of only the dead actors
deceased_actors = []

dead_icons.each do |x|
  if x[:occupation] == "actor"
    deceased_actors.push(x)
  end
end



# make an array of only the icons who died at the age of 27

dead_at_27 = []
dead_icons.each do |icon|
  if icon[:age_at_death] == 27
    dead_at_27.push(icon)
  end
end

dead_at_27 = dead_icons.select { |y| y[:age_at_death] == 27 }


# make an array of only the icons who are rumored to still be among us

death_disputed = dead_icons.select do |hash|
  hash[:death_disputed] == true
end


# dig into this data structure and remove the rumored_cause_of_death from Cass Elliot's data structure (it's rude and unnecessary)

cass_elliot = dead_icons.find { |x| x[:name].include?("Cass Elliot") }
cass_elliot.delete(:rumored_cause_of_death)


# use sweet, sweet Ruby to identify the artist with the most testaments to greatness

the_greatest = dead_icons.max_by do |z|
  z[:testaments_to_greatness].size
end



# return any testments to greatness that were released in 1967
testaments_from_67 = []
dead_icons.each do |x|
  x[:testaments_to_greatness].each do |album_or_movie|
     if album_or_movie.include?("1967")
       testaments_from_67.push(album_or_movie)
     end
  end
end

binding.pry
# create an array of testments to greatness that were released in the 1990s

# return an array of aliases (i.e. "2pac", "Mama Cass", et cetera)

# create an array of great albums, where the items are formatted as a hash, like so: { :title => "L.A. Woman", released: 1970 }
  # NOTE: Make sure TV shows and Movies are not included in your great_albums list

# it would be cool if we could tell a data structure that we're only interested in actors or musicians.
# With that in mind, make a hash, dead_icons_by_occupation that groups objects by their occupation.
# for example, dead_icons_by_occupation["actor"] should return an array of only the dead iconic actors

# permanently remove any icons who is rumored to still be alive from the dead_icons array (because Jim and Tupac are seriously still alive)

#=====================
# Additional Prompts:
#=====================

# The full release date for Ready to Die was "September 13, 1994".
# Given a string in that format, research how would you turn it into a proper DateTime object.


# Look up the lyrics to 'The Hyacinth House' and tell me with an honest face that Jim Morrison didn't fake his own death in a Paris bathroom
