# MOMA App

This app will have 2 models: `Artists` and `Paintings`. 

An Artist __has many__ paintings.
A Painting __belongs to an__ Artist.

An Artist has
* name
* nationality

A Painting has
* title

###Part 1 - Database Schemas

1. Create a new database called `moma_db`.
2. Create the database tables to model Artists, Paintings, and their relationships. 
3. Save this to a file called `moma.sql`

###Part 2 - Setting up ActiveRecord

Create Ruby files for your ActiveRecord models called `artist.rb` and `painting.rb`

###Part 3 - ActiveRecord Practice

#### Seeding

Create a `seed.rb` file that establishes the connection to your database, requires your models and populate your database using ActiveRecord.  Include the following artists and your own favorite:

Artists
- Vincent Van Gogh, Dutch
- Pablo Picasso, Spanish
- Katsushika Hokusai, Japanese

Paintings
- Starry Night, by Van Gogh
- Cafe Terrace at Night
- Guernica, by Picaso 
- The Old Guitarist, by Picasso
- The Great Wave off Kanagawa, by Hokusai
- Red Fuji, by Hokusai

#### Manipulating

Test out with a binding.pry and then write out the commands in a file called `moma.rb` that uses ActiveRecord to do the following:

1. Return all Artists
1. Return all Paintings

1. Return the artist with an id of 2
1. Return the artist with a name of "Vincent Van Gogh"
1. Return all the artists who are "Spanish"

1. Return the painting with an id of 1
1. Return the painting with a name of "Guernica"

1. Return all the paintings that "Pablo Picasso" painted
1. Return the artist of "Guernica"

1. Change Vincent Van Gogh's nationality to "American"
1. Change "Starry Night" to be one of Pablo Picasso's paintings
