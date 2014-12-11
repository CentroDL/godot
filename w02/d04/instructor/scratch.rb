# # Visual Cues

# # Instance vs Class Method

# # In documentation

# # Movie#diretors #=> instance method
# # Movie.directors #=> class

# # In code

# class Movie

#   # instance method
#   def directors
#   end

#   # class method
#   def self.directors
#   end

# end # Movie


# # Instance vs Class Variables


# soup_can # method or a local variable

# # only use these in methods INSIDE classes
# @soup_can  # instance variable

# @@soup_can # class variable


class Cipher
  # we don't need this because we're not calling .new
  # def initialize
  # end
  TRANSLATION = {
  "a" => "n",
  "b" => "o",
  "c" => "p",
  "d" => "q",
  "e" => "r",
  "f" => "s",
  "g" => "t",
  "h" => "u",
  "i" => "v",
  "j" => "w",
  "k" => "x",
  "l" => "y",
  "m" => "z",
  "n" => "a",
  "o" => "b",
  "p" => "c",
  "q" => "d",
  "r" => "e",
  "s" => "f",
  "t" => "g",
  "u" => "h",
  "v" => "i",
  "w" => "j",
  "x" => "k",
  "y" => "l",
  "z" => "m"
}
  def self.encode(word)
    word.split('').map { |letter| TRANSLATION[letter] }.join
  end
end

$stdout.puts(Cipher.encode("hello"))















