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

energy_level = 100
10.times do
  if energy_level > 0
    $stdout.puts("Jumping jack!")
    energy_level -= 15
  else
    $stdout.puts("Oh, huff, ok, umm, just a second, I need to catch, huff, my breath...")
      energy_level += 5
  end
end

#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 2: Add to the above a countdown of reps left!
#
# Also -- what is the return value of the .times method?
#

energy_level = 100
10.times do |number_complete|
  $stdout.print("Only #{10 - number_complete} left... ")
  if energy_level > 0
    $stdout.puts("Jumping jack!")
    energy_level -= 15
  else
    $stdout.puts("Oh, huff, ok, umm, just a second, I need to catch, huff, my breath...")
    energy_level += 5
  end
end

#
# Stop and do not continue! If you are done, make the print out prettier!
#
# Part 3: Rewrite the above exercise to happen in three groups of ten, counting
# down from 30 total, with a small breather in between that adds 25 energy
# points.

energy_level = 100
number_to_do = 10
total_reps   = 30

(total_reps / number_to_do).times do
  break_time = total_reps - number_to_do + 1
  total_reps.downto(break_time) do |number_complete|
    $stdout.print("Only #{number_complete} left... ")
    if energy_level > 0
      $stdout.puts("Jumping jack!")
      energy_level -= 15
    else
      $stdout.puts("Oh, huff, ok, umm, just a second, I need to catch, huff, my breath...")
      energy_level += 5
    end
  end
  $stdout.puts()
  $stdout.puts("Taking a break...")
  $stdout.puts()
  energy_level += 20
  total_reps   -= number_to_do
end
