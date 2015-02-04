require 'pry'
require 'pg'

#======================
# Starter Data
#======================
stores = ["Street Vendor", "The White House Gift Shop", "Nordstrom Rack", "The Cake Ambiance"]

quantities = [5, 10, 15, 2, 7]

prices = [4.99, 9.99, 50.00, 75.00, 100.00]

items = [
  "Gummy Cola Bottle",
  "Guava Candy",
  "Taco",
  "Bibimbop",
  "Burrito",
  "Channa Masala",
  "Lettuce Wrap",
  "PIZZA",
  "Cheese",
  "(Disney Soundtrack)",
  "Whiskey",
  "Athletic Socks",
  "Teach Like a Champion",
  "Practice Perfect"
]

# Within your ruby_powered_shopping_spree.rb file, bring in the pg gem to gain access to the PG class. Then open a connection to your shopping_db database. Store the connection in the variable pg_conn.
pg_conn = PG.connect(dbname: 'shopping_db')

# Using this connection, add 5 purchases to the receipts table, randomly assigning a store, quantity, item, and price from the dummy data provided in ruby_powered_shopping_spree.rb. The date purchased should be today's date.

5.times do
  pg_conn.exec_params("INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ($1, $2, $3, $4, $5);", [stores.sample, items.sample, quantities.sample, prices.sample, '02-04-2014'])
end

# Peter calls you and tells you he traded in his Packers Jersey (purchased at Sears on March 23rd) for a Giants Jersey. He wants the receipts database to reflect the change.
pg_conn.exec("UPDATE receipts SET item = 'Giants Jersey' WHERE id = 15;")

# Peter calls again, and tells you Sears dropped the price of the PS4 from $400 to $350, and they gave him the discount. He wants the receipts table to reflect the change.

pg_conn.exec("UPDATE receipts SET price = 350.00 WHERE id = 1;")

# Part 2: Ruby-Powered Buyer's Remorse
#
# Peter calls again: he went over his monthly budget, and immediately felt bad about the purchases he made on his shopping spree, so he went around randomly returning 8 of his purchases. Thus, make 8 random returns in your Ruby program. Reflect this in the database.

8.times do
  pg_conn.exec_params("UPDATE receipts SET price = 0.0, returned = true WHERE id = $1;", [rand(1..19)])
end

pg_conn.close


# Close your database connection.


