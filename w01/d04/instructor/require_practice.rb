# brings in the library 'colorize'
require 'colorize'

blood_colorized = "blood".red
$stdout.puts(blood_colorized)

water_colorized = "water".blue
$stdout.puts(water_colorized)

$stdout.puts("#{blood_colorized} is thicker than #{water_colorized}, Theon Greyjoy.")
