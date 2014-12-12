require 'pry'
require_relative 'simple_assert'
require_relative 'modules/schoolable'
require_relative 'person'
require_relative 'male'
require_relative 'female'


include SimpleAssert

p1 = Person.new
assert_that("a person is alive at instantiation",         p1.alive?, true)
assert_that("a new person does not have a name at birth", p1.name, nil)
assert_that("a person has an age of 0 at instantiation",  p1.age, 0)
p1.name = "Jim Kevin"
assert_that("we can set a person's name", p1.name, "Jim Kevin")

# ** continue once the above assertions run **

p1.age! #=> 1
assert_that("a person can age",          p1.age, 1)
assert_that("a person has a brain hash", p1.brain.is_a?(Hash),           true)
assert_that("a brain has memories",      p1.brain.has_key?(:memories),   true)
assert_that("a brain has loved_ones",    p1.brain.has_key?(:loved_ones), true)
assert_that("a brain has interests",     p1.brain.has_key?(:interests),  true)
assert_that("a person can't remember anything before the age of 3",
                                         p1.memories, nil)

# ** continue once the above assertions run **

p1.age! #=> 2
p1.age! #=> 3
assert_that("at the age of 3 a person can hold memories", p1.memories.is_a?(Array), true)

p1.remember("going to the bathroom under the piano")
first_memory = {age: 3, memory: "going to the bathroom under the piano"}

assert_that("...and remember things",     p1.memories.first, first_memory)
assert_that("the brain has the memories", p1.brain[:memories].first, first_memory)
p1.get_interested_in("football")
assert_that("at the age of 3 a person has no interests", p1.interests.empty?, true)

# ** continue once the above assertions run **

p1.age! #=> 4
p1.get_interested_in("crayons")
assert_that("a person can add interests", p1.interested_in?("crayons"), true)
assert_that("adding an interest adds a memory", p1.memories.include?({age: 4, memory: "got interested in crayons"}), true)

# ** continue once the above assertions run **

m1 = Male.new
assert_that("a person can't learn before 4", m1.responds_to?(:learn!), false)
4.times { m1.age! }
#assert_that("a Schoolable module is added at 4", m1.included_modules.include?("Schoolable"), true)
assert_that("a person can learn once they turn 4",  m1.responds_to?(:learn!), true)
m1.learn_to("read")

assert_that("a person's learned abilities are stored in memory", m1.memories.include?({age: 4, memory: "learned how to read"}), true)

assert_that("a person's skills can be queried", m1.knows_how_to?(:read), true)
assert_that("...if a person doesn't know something it returns false", m1.knows_how_to?(:dance), false)

