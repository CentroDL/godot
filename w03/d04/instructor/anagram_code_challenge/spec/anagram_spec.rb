require_relative 'simple_assert'
require_relative '../lib/anagram'
include SimpleAssert

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
