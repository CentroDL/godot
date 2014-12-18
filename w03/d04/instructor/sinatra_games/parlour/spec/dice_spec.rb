require_relative 'simple_assert'
require_relative '../dice'

include SimpleAssert

# A traditional die is a rounded cube, with each of its six faces showing a
# different number of dots (pips) from 1 to 6.

# The PLURAL of Die is DICE

# We could represent DICE as an array where each element is the number of sides
# of each die

# For example two six-sided dice could be reprented as [6, 6]

# The outcome of a  "roll" of those two six-sided dice could be represented as
# any two numbers betwen 1 and 6.
# For instance [3, 4] or [2, 2] for Snake Eyes!

# Now let's try creating a class to represent DICE using SimpleAssert

two_six_sided_dice = [6, 6]
assert_that(
  'Parlour::Dice.new takes an array representing the number of sides of each die',
  Parlour::Dice.new(two_six_sided_dice).class,
  Parlour::Dice
)

three_six_sided_dice = [6, 6, 6]
assert_that(
  'Parlour::Dice#roll returns an array of rolled dice',
  Parlour::Dice.new(three_six_sided_dice).roll.class,
  Array
)

four_six_sided_dice = [6, 6, 6, 6]
roll = Parlour::Dice.new(four_six_sided_dice).roll
assert_that(
  'Parlour::Dice#roll returns an array of random Fixnums',
  roll.all? { |n| n.is_a? Fixnum },
  true
)

four_six_sided_dice = [6, 6, 6, 6]
r1 = Parlour::Dice.new(four_six_sided_dice).roll

assert_that(
  "Parlour::Dice#roll's array contains random numbers",
  r1.all? { |n| n.between?(1, 6) },
  true
)

five_six_sided_dice = [6, 6, 6, 6, 6]
assert_that(
  'Parlour::Dice#roll_and_sum returns the sum of the rolled dice',
  Parlour::Dice.new(five_six_sided_dice).roll_and_sum.class,
  Fixnum
)

# # Die don't have to be just 6 sides! You can also have irregular sided die like
# # a dodecahedron, from the Greek δωδεκάεδρον, from δώδεκα dōdeka "twelve" +
# # ἕδρα hédra "base", "seat" or "face")

three_twelve_sided_dice = [12, 12, 12]
assert_that(
  'Parlour::Dice#roll_and_sum returns a proper sum',
  Parlour::Dice.new(three_twelve_sided_dice).roll_and_sum.between?(3, 36),
  true
)

assert_that(
  'Parlour::Dice.roll(number_of_sides) returns a random number',
  Parlour::Dice.roll(6).class,
  Fixnum
)

assert_that(
  "Parlour::Dice.roll(number_of_sides) returns a random number between 1 and
  the number_of_sides",
  Parlour::Dice.roll(12).between?(1, 12),
  true
)
