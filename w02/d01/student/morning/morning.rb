# Correct the following code to print out Taylor's face.

################################################################################
# Part 1
################################################################################

# Step 1
require_relative './taylors.rb'
require_relative './boneyard/exes.rb'
require 'pry'

# Step 2
# Methods

def sing(lyric)
  changed_lyric = "♬#{lyric}♬"
  return changed_lyric
end
# TEST
$stdout.puts(sing("I stay out too late"))

def mmm_mmm(lyric)
  return "#{lyric}, mmm-mmm"
end
# TEST
$stdout.puts(mmm_mmm("That's what people say"))

def back_up(lyric, number_of_words)
  return_lyrics = lyric.split.last(number_of_words).join(" ")
  return "#{lyric} (#{return_lyrics})"
end
# TEST
$stdout.puts(back_up("I'm dancing on my own",4))

def repeat(lyric)
  repeated_lyric = lyric.split.last
  return "#{lyric}, #{repeated_lyric}, #{repeated_lyric}, #{repeated_lyric}, #{repeated_lyric}"
end
# TEST
$stdout.puts(repeat("'Cause the players gonna play"))

def double(lyric)
  return "#{lyric}, #{lyric}"
end
# TEST
$stdout.puts(double("I shake it off"))

def stutter (lyric)
  stutter_lyric = lyric.split.first
  return "#{stutter_lyric}, #{stutter_lyric}, #{lyric}"
end
# TEST
$stdout.puts(stutter("I shake it off, I shake it off"))

# ////////////////////////DONE////////////////////////////////
# ////////////////////WITH METHODS////////////////////////////

$stdout.puts(TAYLORS[0][:head])

exit unless sing("I stay out too late") == "♬I stay out too late♬"
exit unless sing("Got nothing in my brain").include?("♬Got nothing in my brain♬")
exit unless mmm_mmm("That's what people say") == ("That's what people say, mmm-mmm")

$stdout.puts(TAYLORS[0][:face])

exit unless back_up("I'm dancing on my own", 4) == "I'm dancing on my own (dancing on my own)"
exit unless back_up("I make the moves up as I go", 5).include?("(moves up as I go)")
exit unless mmm_mmm("And that's what they don't see") == "And that's what they don't see, mmm-mmm"
exit unless mmm_mmm("That's what they don't see").include?(", mmm-mmm")

$stdout.puts(TAYLORS[0][:mouth])

exit unless repeat("'Cause the players gonna play") == ("'Cause the players gonna play, play, play, play, play")
exit unless repeat("And the haters gonna hate").include?("hate, hate, hate, hate, hate")
exit unless repeat("Baby, I'm just gonna shake").include?("shake, shake, shake, shake, shake")
exit unless double("I shake it off") == "I shake it off, I shake it off"

$stdout.puts(TAYLORS[0][:neck])

exit unless repeat("Baby, I'm just gonna shake").include?("shake, shake, shake, shake, shake")
exit unless repeat("Heart-breakers gonna break").include?("break, break, break, break, break")

exit unless repeat("And the fakers gonna fake").include?("fake, fake, fake, fake, fake")
exit unless double("I shake it off") == "I shake it off, I shake it off"

$stdout.puts(TAYLORS[0][:shoulder])

exit unless stutter("I shake it off, I shake it off") == ("I, I, I shake it off, I shake it off")

$stdout.puts("You made it to the end of the file")
