require 'pry'
require 'pg'

# Leave Commented Out, For Use in a Later Example #########################
store    = ["Sears", "Disney Store", "JC Penney"].sample
item     = ["Leather Marp", "Cotton Darp", "Almond Croissant"].sample
quantity = rand(1..5)
price    = rand(4.00..6.00).round(2)
date     = 'Feb 4 2015'
###########################################################################

# saves database connection to a variable so we can use it to execute SQL statements
db_connection = PG.connect(:dbname => 'shopping_db')

# stores the returned records into a results object
purchases = db_connection.exec("SELECT * FROM receipts")

sears_purchases = db_connection.exec("SELECT * FROM receipts WHERE store = 'Sears';");

sears_purchases.each do |purchase|
  puts "Peter bought a #{purchase['item']} from Sears for #{purchase['price']}"
end

# peter purchased 3 batman shirts at $20.00 a pop from target yesterday (Feb 3)
db_connection.exec("INSERT INTO receipts (store, item, number_of_items, price, buy_date) VALUES ('Target', 'Batman Shirt', 3, 20.00, 'Feb 3 2015');")

# peter returned the last tycoon to the community bookstore, set the price to 0.00
db_connection.exec("UPDATE receipts SET price = 0.00 WHERE item  = 'The Last Tycoon';")

# add a 'returned' column onto the receipts table. it should take a boolean value and default to false
# db_connection.exec("ALTER TABLE receipts ADD COLUMN returned BOOLEAN DEFAULT false;")

# update 'returned' to true for The Last Tycoon
db_connection.exec("UPDATE receipts SET returned = true WHERE item = 'The Last Tycoon';")

# correct the spelling of JC Penney
db_connection.exec("UPDATE receipts SET store = 'JC Penney' WHERE store = 'JC Penny';")

# surround the R in Toys R Us with quotes
db_connection.exec("UPDATE receipts SET store = 'Toys \"R\" Us' WHERE store = 'Toys R Us';")

# destroy all record of the TMNT Bedspread purchase
db_connection.exec("DELETE FROM receipts WHERE item = 'TMNT bedspread';")

sql_statement = "INSERT INTO receipts(store, item, number_of_items, price, buy_date) VALUES($1, $2, $3, $4, $5);"

db_connection.exec_params(sql_statement, [store, item, quantity, price, date])

random_id = rand(1..5)
db_connection.exec_params("DELETE FROM receipts WHERE id = $1;", [random_id])

db_connection.close



####### Later Exercise!!!#####################






