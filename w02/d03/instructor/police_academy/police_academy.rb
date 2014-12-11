require 'pry'
require_relative 'police'
require_relative 'person'

steve_guttenberg = Person.new("Carey Mahoney")
wacky_police     = Police.train(steve_guttenberg)
$stdout.puts wacky_police.name         #=> "Carey Mahoney"
$stdout.puts wacky_police.badge.class  #=> String
$stdout.puts wacky_police.badge.length #=> 10
$stdout.puts Police::DUTIES.include?(wacky_police.duty) #=> true

binding.pry
