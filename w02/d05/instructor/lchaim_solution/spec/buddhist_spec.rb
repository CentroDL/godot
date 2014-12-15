require_relative '../simple_assert'
require_relative '../lib/buddhist'

include SimpleAssert

b = Buddhist.new('phil')
14.times { b.age! }
b.remember('swimming')
b.die!
b = Buddhist.new('phil')
b.recall('swimming')

name = 'Dolly'
b1 = Buddhist.new(name)
14.times { b1.age! }
b1.remember('swimming')
b1.die!

assert_that('save memories persists a file',
            File.exist?("person_memories_#{name.upcase}.txt"), true)

b2 = Buddhist.new(name)
4.times { b2.age! }

assert_that('a new person loads previous memories',
            b2.recall?('swimming'), true)
