#Creating Cypher Class
class Cypher

  ALPHABET_ARRAY = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "]
  CYPHER_ARRAY   = ["n","o","p","q","r","s","t","u","v","w","x","y","z","a","b","c","d","e","f","g","h","i","j","k","l","m"," "]

  def self.encode(word)
    cypher_word = []
    word_array = word.split("")
    word_array.each do |letter|
      cypher_index = ALPHABET_ARRAY.index(letter)
      cypher_word.push(CYPHER_ARRAY[cypher_index])
    end
    return cypher_word.join("")
  end
end

puts Cypher.encode("hello")
# => "uryyb"

puts Cypher.encode("brian has a nice scarf")
puts Cypher.encode("with two seperate arrays")
# => "crgre"
