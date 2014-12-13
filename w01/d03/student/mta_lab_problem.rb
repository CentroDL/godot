#MTA Problem

$stdout.puts("Welcome to the MTA Help Provider...")
$stdout.puts("We have 3 lines currently running...")
$stdout.puts("They are the N-line, 6-line, and L-line.")

n_line_stops = {
  "Times Square" => 4,
  "34th" => 3,
  "28th" => 2,
  "23rd" => 1,
  "Union Square" => 0,
  "8th" => -1
}

l_line_stops = {
  "8th Ave" => 2,
  "6th Ave" => 1,
  "Union Square" => 0,
  "3rd Ave" => -1,
  "1st Ave" => -2
}

six_line_stops = {
  "Grand Central" => 4,
  "33rd" => 3,
  "28th-six" => 2,
  "23rd-six" => 1,
  "Union Square" => 0,
  "Astor Place" => -1
}

$stdout.puts("What Line would you like to take?(6/L/N)?")
line_choice = $stdin.gets.chomp
if line_choice.upcase == "N"
  $stdout.puts(n_line_stops.keys)
  train1 = n_line_stops
elsif line_choice.upcase == "L"
  $stdout.puts(l_line_stops.keys)
  train1 = l_line_stops
else
  $stdout.puts(six_line_stops.keys)
  train1 = six_line_stops
end

$stdout.puts("Which stop would you like to get on at?")
station_choice = $stdin.gets.chomp
stop_value1 = train1[station_choice]
$stdout.puts(stop_value1)

$stdout.puts("What Line would you like to get off on?(6/L/N)?")
off_line_choice = $stdin.gets.chomp
if off_line_choice.upcase == "N"
  $stdout.puts(n_line_stops.keys)
  train2 = n_line_stops
elsif off_line_choice.upcase == "L"
  $stdout.puts(l_line_stops.keys)
  train2 = l_line_stops
else
  $stdout.puts(six_line_stops.keys)
  train2 = six_line_stops
end



$stdout.puts("Which stop would you like to get off at?")
station_choice = $stdin.gets.chomp
stop_value2 = train2[station_choice]
$stdout.puts(stop_value2)

if train1 != train2
  stop_value2 = -(stop_value2.abs)
end

distance = (stop_value1 - stop_value2).abs
$stdout.puts("You must travel #{distance}")

