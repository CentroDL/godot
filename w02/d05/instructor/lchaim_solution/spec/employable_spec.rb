require_relative '../simple_assert'
require_relative '../lib/female'
require_relative '../lib/male'

include SimpleAssert

f1 = Female.new

assert_that("A person can't work until the age of 14",
            f1.respond_to?(:work), false)

14.times { f1.age! }

assert_that('at 14 a person should have a work method',
            f1.respond_to?(:work), true)

work_sayings = ['i hate working!', 'i want my life back!']

assert_that('work returns a random work string',
            work_sayings.include?(f1.work), true)

f1.get_a_job!

jobs = f1.memories.select { |memory| memory[:memory].include? 'job' }

assert_that('#get_a_job! assigns a random job',
            jobs.any?, true)

f1.age!
