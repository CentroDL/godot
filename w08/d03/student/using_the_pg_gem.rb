require 'pry'
require 'pg'

db_connection = PG.connect( dbname: 'shopping_db' )


# Leave These Variables Commented Out, For Use in a Later Example #########
#store    = ["Sears", "Disney Store", "JC Penney"].sample
#item     = ["Leather Marp", "Cotton Darp", "Almond Croissant"].sample
#quantity = rand(1..5)
#price    = rand(4.00..6.00).round(2)
#date     = 'Feb 4 2015'
###########################################################################


purchases = db_connection.exec("SELECT * FROM receipts;")
sears_purchases = db_connection.exec("SELECT * FROM receipts WHERE store = 'Sears'")

sears_purchases.each do |sears_purchase|

  puts "Peter bought a #{ sears_purchase['item'] } from Sears for #{ sears_purchase["price"] }."

# binding.pry
end

# Yesterday, Peter purchased 3 Batman shirts (at $20.00 a pop) from Target.
db_connection.exec("INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ('Target', 'Batman Shirt', 3, '$20.00', '2015-2-3')")

# Peter returned 'The Last Tycoon' to the Community Bookstore, and the store kindly refunded his card, so the purchase price should be updated to $0.00.
db_connection.exec("UPDATE receipts SET price = '$0.00' WHERE item = 'The Last Tycoon' " )

# Add a 'returned' column onto the receipts table. It should take a boolean value and default to false.

#db_connection.exec( "ALTER TABLE receipts ADD COLUMN returned BOOLEAN DEFAULT false;" )

# Update the 'returned' value for 'The Last Tycoon' to true.
db_connection.exec("UPDATE receipts SET returned = true WHERE item = 'The Last Tycoon'; ")

# Looks like Peter mis-typed JC Penney while inputting his receipts (he forgot the second 'E'). Make sure the store's spelling is correct for all relevant entries in the receipts table.
db_connection.exec("UPDATE receipts SET store = 'JC Penney' WHERE store = 'JC Penny';")

# Technically, the R in Toys R Us should be surrounded by double quotes. Update all relevant entries with the proper spelling of Toys "R" Us.
db_connection.exec("UPDATE receipts SET store = 'Toys \"R\" Us' WHERE store = 'Toys R Us';")

# Peter is embarrassed about his Teenage Mutant Ninja Turtles bedspread and wants the purchase stricken from the receipts table. Indulge him.
db_connection.exec("DELETE FROM receipts WHERE item = 'TMNT bedspread'")



