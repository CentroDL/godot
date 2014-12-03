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
  "8th" => 1
}

l_line_stops = {
  "8th Ave" => 2,
  "6th Ave" => 1,
  "Union Square" => 0,
  "3rd Ave" => 1,
  "1st Ave" => 2
}

six_line_stops = {
  "Grand Central" =>4,
  "33rd" => 3,
  "28th-six" => 2,
  "23rd-six" => 1,
  "Union Square" => 0,
  "Astor Place" => 1
}

$stdout.puts(n_line_stops)
$stdout.puts(l_line_stops)
$stdout.puts(six_line_stops)
