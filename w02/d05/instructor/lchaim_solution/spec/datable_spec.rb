require_relative '../simple_assert'
require_relative '../lib/female'
require_relative '../lib/male'

include SimpleAssert

f1 = Female.new
15.times { f1.age! }

assert_that("before 16 a person can't date people",
            f1.is_a?(Abilities::Datable), false)

f1.age!

assert_that('at 16 a person can date people',
            f1.is_a?(Abilities::Datable), true)

m1 = Male.new
16.times { m1.age! }
m1.get_interested_in('vampyres')
f1.go_out_with(m1)

assert_that('when a person dates someone they get one of their interests',
            f1.interested_in?('vampyres'), true)
