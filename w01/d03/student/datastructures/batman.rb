f_name = "Bruce"
l_name = "Wayne"
billionaire = true
alter_ego = "Batman"

batman = {:f_name => "Bruce", :l_name => "Wayne", "billionaire" => "true", "alter_ego" => "Batman"}


msg = "#{batman[:alter_ego]} is the secret identity of #{batman[:f_name]} #{batman[:l_name]}, an American #{batman[:billionaire] ? "billionaire, industrialist, and philanthropist" : "hobo"}."

$stdout.puts(msg)
