## The Ruby-Powered Shopping Spree

Early this morning while we were tracking his purchase history, Peter Lai went on a shopping spree with a powerful new credit card. As his family accountant, you must make the appropriate changes to the `shopping_db` database that tracks his purchases. Thankfully, you can update your postgres database with your favorite programming language using the powerful 'pg' gem.

#### Part 1

1. Read over the [PG Gem Cheatsheet](https://gist.github.com/vanderhoop/be32262c0cf1bf8ac29d).
1. Run the command `psql -d shopping_db -f seeds.sql` from within the `ruby_powered_shopping_spree` directory.
  - This will update your receipts table so that we all have the same records.
1. Within your `ruby_powered_shopping_spree.rb` file, bring in the pg gem to gain access to the `PG` class. Then open a connection to your `shopping_db` database. Store the connection in the variable `pg_conn`.
1. Using this connection, add 5 purchases to the receipts table, *randomly* assigning a store, quantity, item, and price from the dummy data provided in `ruby_powered_shopping_spree.rb`. The date purchased should be today's date.
1. Peter calls you and tells you he traded in his Packers Jersey (purchased at Sears on March 23rd) for a Giants Jersey. He wants the receipts database to reflect the change.
1. Peter calls again, and tells you Sears dropped the price of the PS4 from $400 to $350, and they gave him the discount. He wants the receipts table to reflect the change.

#### Part 2: Ruby-Powered Buyer's Remorse

1. Peter calls again: he went over his monthly budget, and immediately felt bad about the purchases he made on his shopping spree, so he went around randomly returning 8 of his purchases. Thus, make 8 random returns in your Ruby program. Reflect this in the database.
1. Close your database connection.
