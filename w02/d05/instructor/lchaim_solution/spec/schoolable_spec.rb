require_relative '../simple_assert'
require_relative '../lib/male'

include SimpleAssert

m1 = Male.new

assert_that("A person can't learn before 4",
            m1.respond_to?(:learn!), false)

4.times { m1.age! }

assert_that('A Schoolable module is added at 4',
            m1.is_a?(Abilities::Schoolable), true)

assert_that('A person can learn once they turn 4',
            m1.respond_to?(:learn!), true)

m1.learn_to('read')

assert_that(
  "A person's learned abilities are stored in memory",
  m1.memories.include?(age: 4, memory: 'learned how to read'), true)

assert_that("A person's skills can be queried",
            m1.knows_how_to?(:read), true)

assert_that("...if a person doesn't know something it returns false",
            m1.knows_how_to?(:dance), false)
