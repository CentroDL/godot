require_relative '../simple_assert'
require_relative '../lib/female'
require_relative '../lib/male'

include SimpleAssert

f1 = Female.new
18.times { f1.age! }

assert_that("females can't reproduce before 19",
            f1.beget!, false)

f1.age!
f1.age!

baby = f1.beget!

assert_that('females can reproduce at 19',
            baby.is_a?(Person), true)

assert_that("babies are added to a female's loved ones array",
            f1.loves?(baby), true)

assert_that("females are added to the baby's loved ones array",
            baby.loves?(f1), true)
