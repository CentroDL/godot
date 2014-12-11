require 'pry'
require_relative 'product'
require_relative 'bike'
require_relative 'shirt'

trike = Bike.new(450,"BMX",6,"20cm")
tank_top = Shirt.new(25,"Nike","XL","BLue","SNARF")

puts(trike.price)
puts(trike.brand)
puts(trike.tire_diameter)
puts(trike.gear_count)

puts(tank_top.price)
puts(tank_top.brand)
puts(tank_top.size)
puts(tank_top.color)
puts(tank_top.text)
