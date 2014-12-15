require_relative '../simple_assert'
require_relative '../lib/male'
require_relative '../lib/female'

include SimpleAssert

m1 = Male.new

assert_that('Male inherits from Person',
            m1.is_a?(Person), true)

assert_that("males can't reproduce",
            m1.is_a?(Abilities::Reproducible), false)
