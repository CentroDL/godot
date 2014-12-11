require 'pry'
require_relative 'product'
require_relative 'bike'
require_relative 'shirt'

#initialize(p, b, gear, dia)

schwinn = Bike.new(500, 'Schwinn', 30, 18)
puts schwinn

ls_tee = Shirt.new(20, 'Last Responders', 'M','black', 'Last Responders' )
binding.pry
