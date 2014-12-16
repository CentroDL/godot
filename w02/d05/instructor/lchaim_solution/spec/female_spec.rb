require_relative '../simple_assert'
require_relative '../lib/female'

include SimpleAssert

f1 = Female.new

assert_that('Female inherits from Person',
            f1.is_a?(Person), true)

assert_that('females can reproduce',
            f1.is_a?(Abilities::Reproducible), true)
