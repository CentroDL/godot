require_relative '../simple_assert'
require_relative '../lib/female'
require_relative '../lib/male'

include SimpleAssert

f1 = Female.new
f1.name = 'Rosaline'
f2 = Female.new
f2.name = 'Juliet'
m2 = Male.new
m2.name = 'Romeo'
m3 = Male.new
m3.name = 'Mercutio'

34.times { f1.age!; f2.age!; m2.age!; m3.age! }

[
  'npr',
  'farmers markets',
  'the ocean',
  'the comedies of aristophanes'
].each do |interest|
  f2.get_interested_in(interest)
  m2.get_interested_in(interest)
end

assert_that(
  "if two people don't have more than 3 interests in common they can't marry",
  m2.marry(f1), false)

jilted_memories = m2.recall('jilted')

assert_that('they will remember being jilted',
            jilted_memories.any?, true)

assert_that('if two people have more than 3 interests in common they can marry',
            m2.marry(f2), true)

married_memories = m2.recall('married')

assert_that('they will remember being married',
            married_memories.any?, true)

dumpee = m2.no_longer_loves!(f2)

assert_that('they can stop loving someone',
            m2.loves?(dumpee), false)
