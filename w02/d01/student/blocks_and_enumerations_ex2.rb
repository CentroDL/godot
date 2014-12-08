# An exercise exercise!
#
# Part 1: Attempt to do ten jumping jacks! Every jump you do uses exactly 15
# points of energy. You begin with one hundred points of energy. If your energy
# falls to 0 or below, then take a rest -- don't do a jumping jack and instead
# regain 5 energy.
#
# Also -- what is it called when we use a variable declared outside of the block
# on the inside of the block?
#

#energy = 100

def jumping_jacks(number, energy)
 count = 0
 while count < number
    if energy >= 15
      count += 1
      energy -= 15
      puts "Did #{count} jumping jacks, you have #{energy} energy left."
    else
      puts "Waiting, #{energy} energy left."
      energy += 5
    end
 end
end

puts "Part 1: Jumping Jacks"


jumping_jacks(10, 100)
#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 2: Add to the above a countdown of reps left!
#
# Also -- what is the return value of the .times method?
#

#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 3: Rewrite the above exercise to happen in three groups of ten, counting
# down from 30 total, with a small breather in between that adds 25 energy
# points.
