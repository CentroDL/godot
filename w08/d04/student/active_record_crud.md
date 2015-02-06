# CRUD

Read through part 5 of [ActiveRecord basics](http://guides.rubyonrails.org/active_record_basics.html#crud-reading-and-writing-data) and answer the following:

- In their examples given, what must already be in place and what code must have already been written for the examples to work?

- Take a guess and draw out what the schema for the example User ActiveRecord model might look like.

### We're going to test out ActiveRecord on the hogwarts_app data we used from the other day.

> If you want fresh hogwarts data check the `hogwarts_app` folder and run the 
`schema` and `seed` sql files.

## Setup

Because we're using ActiveRecord outside of Rails, we'll need to configure it
so it knows to talk to our database.

The following code doesn't need to go in EVERY Ruby file that uses ActiveRecord, 
it just needs to be loaded once before everything else.

```rb
require 'active_record'
ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  host:     'localhost',
  username: 'philco',  # your username 
  database: 'petstore' # whatever postgres db you want to connect to
)
```

Try creating a file called `db_config.rb` and include the above code.

Change the username to your own and the database to `hogwarts_app`

## Creating a model

Now we can test out creating an ActiveRecord model in pry.
First try loading up the `db_config.rb` file in pry.

Enter into `Pry` and type the following

```
load 'hogwarts_app/db_config.rb'
```

It should return `true`

Now try creating an ActiveRecord model for the students table in the hogwarts_app database.

- How would you create a new Student using ActiveRecord?
- How would you save a new Student using ActiveRecord?

It may make more sense to see what we're doing if we logged the output and saw how ActiveRecord is talking to Postgres.  Add the following line to your `db_config.rb` and reload pry.

```rb
ActiveRecord::Base.logger = ActiveSupport::Logger.new($stdout)
```

> What's happening with each ActiveRecord statement?


- How would you query the database and get back all the student records using ActiveRecord?
- What kind of object is returned from the above query?
- How would you find all the students with the last name "Weasley"?
- How would you change the student named "Tom Riddle" to "Larry Voldemort"
- How would you change all the students with the last name of "Weasley" to "Weezy"
- How would you delete the student formally known as "Tom Riddle"?

If you did all this in pry, let's try saving the Student ActiveRecord model.
- Create a file called `student.rb` and save just your class definition there.
- In your `db_config.rb` use `require_relative` to bring in the `student.rb` file.

You should be able to load up `db_config.rb` in pry again and instantiate Students.

- Create additional ActiveRecord models for houses, spells, and death eater memberships.
- Create Ruby files for each and use require_relative to add them to `db_config.rb`
- Add additional Houses for "Durmstrang" and "Beauxbatons"
- Create the following students for House Beauxbatons
  - Fleur Delacour
  - Gabrielle Delacour
  - Luc Millefeuille
  - Nicolas Flamel
  - Olympe Maxime
  - Perenelle Flamel
  - Vincent Duc de Trefle-Picques
- Create the following students for House Durmstrang
  - Gellert Grindelwald
  - Viktor Krum
  - Poliakoff
  - Igor Karkaroff
