#Creating Franchise Class
require 'pry'
require_relative "mc_donalds.rb"

class Franchise

end


# greenpoint_ave_mcd = McDonalds.new
# $stdout.puts(greenpoint_ave_mcd.class)

chelsea_mcd = McDonalds.new(
  "335 8th Ave, New York, NY  10001",
  105, "07:00", "23:00",
  "http://www.yelp.com/biz/mcdonalds-new-york-136",
  "Marco Diaz"
)
# puts(chelsea_mcd.location)      #=> "335 8th Ave, New York, NY  10001"
# puts(chelsea_mcd.capacity)      #=> 105
# puts(chelsea_mcd.open_time)     #=> "06:00"
# puts(chelsea_mcd.closing_time)  #=> "23:00"
# puts(chelsea_mcd.yelp_page)     #=> "http://www.yelp.com/biz/mcdonalds-new-york-136"
# puts(chelsea_mcd.manager)       #=> "Marco Diaz"

union_square_mcd = McDonalds.new(
  "39 Union Sq W, New York, NY  10003",
  60, "7:00am", "12:00am",
  "http://www.yelp.com/biz/mcdonalds-new-york-105",
  "Terry Johnson"
)
union_square_mcd.manager  = "Helina Senai"
union_square_mcd.capacity = 65
union_square_mcd.open_time  = "06:00"
union_square_mcd.closing_time = "23:30"

# $stdout.puts(chelsea_mcd.is_open_at?("23:30"))      # >> false
# $stdout.puts(union_square_mcd.is_open_at?("23:30")) # >> true

$stdout.puts(chelsea_mcd.order(5, "happy meals"))
  # >> "Here is your order of 5 happy meals. Thank you."
$stdout.puts(union_square_mcd.order(1, "big mac"))          # >> ...
$stdout.puts(union_square_mcd.order(1, "chicken sandwich")) # >> ...
$stdout.puts(union_square_mcd.order(1, "filet o' fish"))    # >> ...

$stdout.puts(chelsea_mcd.served)      # >> 5
$stdout.puts(union_square_mcd.served)




