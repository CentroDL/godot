# What needs to be required and included in order to use the SimpleAssert library?
# What needs to be required to use the ScrabbleWord code?

# Morning!

word = ScrabbleWord.new('b')
score = word.score
assert_that(
  '`Srabble#score` should return the score value of that letter based on the above scoring "hash" table.',
  score,
  3)

# Uncomment the next assertion once the first passes!

# word = ScrabbleWord.new('C')
# assert_that(
#   'The score should not be affected by capitalization.',
#   word.score,
#   3)

# word = ScrabbleWord.new('winter')
# assert_that(
#   '`Scrabble#score` works with multiple letters',
#   word.score,
#   9)


# word = ScrabbleWord.new('SnoWMaN')
# assert_that(
#   '`Scrabble#score` is not affected by capitalization',
#   word.score,
#   12)


# word = ScrabbleWord.new('snowflake')
# assert_that(
#   '`ScrabbleWord#multiplier_score` multiplies a score by a factor of 2',
#   word.multiplier_score(2),
#   38)

# word = ScrabbleWord.new('mittens')
# assert_that(
#   '`ScrabbleWord#multiplier_score` can multiply scores by a factor of 3',
#   word.multiplier_score(3),
#   27)
