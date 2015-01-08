require 'redis'
require 'pry'

$redis= Redis.new host: "127.0.0.1", port: 6379
# Create a program that
# Prompt a user for their name
# Prompt a user for their age
# Print to standard out "Hello, NAME. You are AGE."
$stdout.puts "What's your name?"
  name = $stdin.gets.chomp
  $redis.set "name", name
$stdout.puts "What's your age?"
  age = $stdin.gets.chomp
  $redis.set "age", age
$stdout.puts "Hello, #{name}. You are #{age}."

#store the information in a hash with the format
# users:NAME
id="dennis"
user = {
  "name" => "dennis",
  "age" => 28
}
$redis.hmset "users:#{id}", user.flatten
# binding.pry
