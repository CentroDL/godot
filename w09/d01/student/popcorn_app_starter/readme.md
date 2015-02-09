We're going to create a new Rails application and use our database from Friday for the Popcorn App.

Create a new Rails application in `~/dev/wdi` called `popcorn_app` with a postgres database and no turbo links.

Run `rake db:create` This should create a database called `popcorn_app_development`

Import the `schema.sql` file into `popcorn_app_development`

Double check in `psql` that your tables were created.

Update 'config.rb' with your username.

Run `ruby seeds.rb` to populate the database.

Now return to `~/dev/wdi/popcorn_app`

Run `rake db:schema:dump` and then check `~/dev/wdi/popcorn_app/db/schema.rb`

Copy over the ActiveRecord model for "User"

Update your config/routes.rb to go to "users#index"

Display all your users names
