# All together now!

students = [
  "Aliya",
  "Andres",
  "Angelina",
  "Brian",
  "Dain",
  "Dana",
  "Dennis",
  "Kamari",
  "Kristen",
  "Melodie",
  "Michael",
  "Patricio",
  "Chadd",
  "Ryan",
  "Sade",
  "Sarah",
  "Simons"
]

# Part 1:
#
# 1. List the students in the array above by printing them to standard out.

students.each {|name| puts name}

# 2. Print out only the first initials of the students above (eg, "Dennis" --> "D.").

students.each do |name|
  initial = name[0]
  puts initial[0]
end

# 3. Create a new array of just the students whose names start with vowels.
names_starting_with_vowels = []
students.each do |name|
  if name.start_with?("A"||"E"||"I"||"O"||"U")
    names_starting_with_vowels.push(name)
  end
end
puts(names_starting_with_vowels)


klass = [
  {
    :name => "Aliya Scribner",
    :hipchat => "@AliyaScribner",
    :email => "aliya.scribner@gmail.com",
    :github => "Dev814"
  },
  {
    :name => "Andres Valencia",
    :hipchat => "@AndresValencia",
    :email => "andresv2@mac.com",
    :github => "andresv2"
  },
  {
    :name => "Angelina Bethoney",
    :hipchat => "@AngelinaBethoney",
    :email => "ambethoney@yahoo.com",
    :github => "ambethoney"
  },
  {
    :name => "Brian Rucker",
    :hipchat => "@BrianRucker",
    :email => "rucker.b@gmail.com",
    :github => "Brucker1"
  },
  {
    :name => "Dain Carver",
    :hipchat => "@DainCarver",
    :email => "carver403@gmail.com",
    :github => "rugger403"
  },
  {
    :name => "Dana DeFilippo",
    :hipchat => "@DanaDeFilippo",
    :email => "dana.defilippo@gmail.com",
    :github => "danadflip"
  },
  {
    :name => "Dennis Liaw",
    :hipchat => "@DennisLiaw",
    :email => "dennis.liaw@gmail.com",
    :github => "CentroDL"
  },
  {
    :name => "Kamari Aykes",
    :hipchat => "@KamariAykes",
    :email => "aykeskc@gmail.com",
    :github => "brainyandbrown"
  },
  {
    :name => "Kristen MacFarlane",
    :hipchat => "@KristenMacFarlane",
    :email => "krismacfarlane@gmail.com",
    :github => "krismacfarlane"
  },
  {
    :name => "Melodie Malfa",
    :hipchat => "@MelodieMalfa",
    :email => "melmalfa@gmail.com",
    :github => "melmalfa"
  },
  {
    :name => "Michael Campbell",
    :hipchat => "@MichaelCampbell",
    :email => "mccool322@aol.com",
    :github => "hammer7402"
  },
  {
    :name => "Patricio Calderon",
    :hipchat => "@PatricioCalderon",
    :email => "ourobor@gmail.com",
    :github => "Patdel"
  },
  {
    :name => "Chadd Clairmont",
    :hipchat => "@PaulClairmont",
    :email => "pcac25@gmail.com",
    :github => "chaddpaul"
  },
  {
    :name => "Ryan Laszlo",
    :hipchat => "@RyanLaszlo",
    :email => "ryan.laszlo@gmail.com",
    :github => "ryanlaszlo"
  },
  {
    :name => "Sade Stevens",
    :hipchat => "@SadeStevens",
    :email => "sadestevens.hc@gmail.com",
    :github => "Sadestevens"
  },
  {
    :name => "Sarah McAlear",
    :hipchat => "@SarahMcAlear",
    :email => "sarah.mcalear@gmail.com",
    :github => "sarahmcalear"
  },
  {
    :name => "Simons Chase",
    :hipchat => "@SimonsChase",
    :email => "simons.chase@gmail.com",
    :github => "slchase"
  }
]

# Part 2:
#
# 1. List the students in the array above by printing their names to standard out.

0.upto(klass.length-1) do |i|
  puts( klass[i][:name])
end

# 2. Print out only the students last names.

0.upto(klass.length-1) do |i|
  name = klass[i][:name]
  name_array = name.split
  puts(name_array[name_array.length-1])
end

# 3. Create an array of all of the students' GitHub name.

github_names = []
klass.each {|member| github_names.push( member[:github] )}
puts( github_names)

