require_relative 'simple_assert'
require_relative '../lib/anagram'
include SimpleAssert

def format(word)
  word.delete(' ').downcase.split('').sort
end

def anagram?(word1, word2)
  format(word1) == format(word2)
end

def find_anagrams(word, list)
  list.select { |w| anagram?(w, word) }
end


assert_that("#anagram? returns true when given 2 words that are anagrams", anagram?("steven", "events"), true )
assert_that("#anagram? returns false when given 2 words that aren't anagrams", anagram?("kamari", "kristen"), false )
assert_that("#anagram? returns false when given 2 words that have the same letters but are different lengths", anagram?("nose", "nosey"), false )
assert_that("#anagram? is case insensitive", anagram?("Steven", "events"), true )

result = find_anagrams("packers", ["vikings", "bears", "lions"])
assert_that("#find_anagrams returns an array", result.class, Array)

anagrams_found = find_anagrams("bing", ["enlists", "google", "inlets", "banana"])
assert_that("#find_anagrams returns an empty array when there are no matches", anagrams_found == [], true )

uncovered_anagrams = find_anagrams("listen", ["enlists", "google", "inlets", "banana"])
assert_that("#find_anagrams returns one match when given a list that contains only one anagrams", uncovered_anagrams == ["inlets"], true )

returned_anagrams = find_anagrams("listen", ["enlists", "google", "inlets", "banana", "enlist"])
assert_that("#find_anagrams returns multiples matches when given a list that contains multiple anagrams", returned_anagrams == ["inlets", "enlist"], true )

assert_that("works with multiple words in a single string", anagram?("Mr Mojo Risin", "Jim Morrison"), true)
