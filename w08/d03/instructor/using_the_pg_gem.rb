require 'pry'
require 'pg'

# saves database connection to a variable so we can use it throughout our program
db_connection = PG.connect(dbname: 'shopping_db')

# Leave These Variables Commented Out, For Use in a Later Example #########
#store    = ["Sears", "Disney Store", "JC Penney"].sample
#item     = ["Leather Marp", "Cotton Darp", "Almond Croissant"].sample
#quantity = rand(1..5)
#price    = rand(4.00..6.00).round(2)
#date     = 'Feb 4 2015'
###########################################################################

purchases = db_connection.exec("SELECT * FROM receipts;")

sears_purchases = db_connection.exec("SELECT * FROM receipts WHERE store = 'Sears';")

sears_purchases.each do |sears_purchase|
  puts "Peter bought a #{sears_purchase['item']} from Sears for #{sears_purchase['price']}."
end

