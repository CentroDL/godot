#################
# Data Structures
#################

# each of the train lines modelled as an array, and stored in a variable with the train line name
n_line_stations   = ['Times Square', '34th', '28th-n', '23rd-n', 'Union Square', '8th']
l_line_stations   = ['8th Ave', '6th Ave', 'Union Square', '3rd Ave', '1st Ave']
six_line_stations = ['Grand Central', '33rd', '28th-six', '23rd-six', 'Union Square', 'Astor Place']

# a hash that represents the entire subway system
# the keys are symbols and the values are arrays containing the stations
mta = {
  :n_line   => n_line_stations,
  :l_line   => l_line_stations,
  :six_line => six_line_stations
}

# a visual representation of the structure.
lines = mta.keys.join(', ')

#########
# Program
#########

# print the title of the application
$stdout.puts("*** MTA ***")
$stdout.puts # an empty line

# ask the line the user wants to get on
$stdout.puts("Which line do you want to get on to?")
$stdout.puts("Your choices are: #{lines}")

# store the user's answer as a symbol to access the line from the mta hash
on_line = $stdin.gets.chomp.to_sym

# ask the station the user wants to get on
$stdout.puts("Which station?")
$stdout.puts("Your choices are: #{mta[on_line].join(', ')}")
on_station = $stdin.gets.chomp

$stdout.puts

# ask the line and station the user wants to get off, and store them in variables
$stdout.puts("Which line do you want to get off of?")
$stdout.puts("Your choices are: #{lines}")
off_line = $stdin.gets.chomp.to_sym
$stdout.puts("Which station?")
$stdout.puts("Your choices are: #{mta[off_line].join(', ')}")
off_station = $stdin.gets.chomp

$stdout.puts

# decide if we have to transfer or not
if on_line != off_line # if we do have to transfer
  # store the fact that there was a transfer for later
  transfer = true

  # find out what the transfer point is
  intersection = (mta[on_line] & mta[off_line]).first

  # find out the distance from our on station to the transfer point
  on_station_index              = mta[on_line].index(on_station)
  on_station_intersection_index = mta[on_line].index(intersection)
  before_transfer_length        = (on_station_index - on_station_intersection_index).abs

  # find out the distance from our transfer point to the off station
  off_station_index              = mta[off_line].index(off_station)
  off_station_intersection_index = mta[off_line].index(intersection)
  after_transfer_length          = (off_station_index - off_station_intersection_index).abs

  # add our before transfer and after transfer stations to get the total length
  total_trip_length = before_transfer_length + after_transfer_length

else # if we don't have to transfer
  transfer = false

  # find out the distance from our on station to the off station
  on_station_index  = mta[on_line].index(on_station)
  off_station_index = mta[off_line].index(off_station)
  total_trip_length = (on_station_index - off_station_index).abs
end

# create pretty output
on_line_text     = on_line.to_s.split('_').first.capitalize
off_line_text    = off_line.to_s.split('_').first.capitalize
on_station_text  = "#{on_station.split('-').first} #{on_line_text} station"
off_station_text = "#{off_station.split('-').first} #{off_line_text} station"

# print out the trip length
$stdout.puts("Your trip from the #{on_station_text} to the #{off_station_text} is #{total_trip_length} stops long.")
if on_line != off_line
  $stdout.puts("You will have to make 1 transfer at Union Square to the #{off_line_text} line.")
end