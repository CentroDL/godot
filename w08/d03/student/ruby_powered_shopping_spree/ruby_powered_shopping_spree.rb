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

pg_conn = PG.connect dbname: 'shopping_db'

# Using this connection, add 5 purchases to the receipts table, randomly assigning a store, quantity, item, and price from the dummy data provided in ruby_powered_shopping_spree.rb. The date purchased should be today's date.

insert_statement = "INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ( $1, $2, $3, $4, $5 );"

5.times do
  pg_conn.exec_params insert_statement, [ stores.sample, items.sample, rand(1..50), prices.sample, 'Feb 4 2015' ]
  #date was optional here because of the schema
end

pg_conn.exec "UPDATE receipts SET item = 'Giants Jersey' WHERE item = 'Packers Jersey';"

pg_conn.exec "UPDATE receipts SET price = 350.00 WHERE item = 'PS4';"

# Peter calls again: he went over his monthly budget, and immediately felt bad about the purchases he made on his shopping spree, so he went around randomly returning 8 of his purchases. Thus, make 8 random returns in your Ruby program. Reflect this in the database.

8.times do
  row = (pg_conn.exec "SELECT id FROM receipts;").to_a.sample["id"].to_i
  # binding.pry

  pg_conn.exec_params "DELETE FROM receipts WHERE id = $1", [row] if !row
  puts "deleted row #{row}"
  # pg_conn.exec_params "UPDATE receipts SET returned = true, price = 0.00 WHERE id = $1 AND returned = false;", [row]
end

pg_conn.close

