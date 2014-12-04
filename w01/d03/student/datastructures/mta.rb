n_line_stops   = ['Times Square', '34th', '28th-n', '23rd-n', 'Union Square', '8th']
l_line_stops   = ['8th Ave', '6th Ave', 'Union Square', '3rd Ave', '1st Ave']
six_line_stops = ['Grand Central', '33rd', '28th-six', '23rd-six', 'Union Square', 'Astor Place']

mta = {
  :n_line   => n_line_stops,
  :l_line   => l_line_stops,
  :six_line => six_line_stops
}

$stdout.puts("#{mta[:n_line]}")
  $stdout.puts("At which stop would you like to get on the N line?")
    answer_origin = [$stdin.gets.chomp]
  $stdout.puts("At which stop would you like to get off the N line?")
    answer_destination = [$stdin.gets.chomp]

n_line_stops.index("answer_origin")

$stdout.puts("#{:n_line[answer_destination] - :n_line[answer_origin]}")
