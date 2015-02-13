## Gotta Catch Em All

![image](http://www.platformnation.com/wp-content/uploads/2011/01/pokemon-logo.jpg)

The prime directive of the Poké master is to catch them all. You are an aspiring Poké master.

#### Homework Objectives 
  - gain additional experience using the following:
    - [Active Record Migrations](http://api.rubyonrails.org/classes/ActiveRecord/Migration.html)
    - [Active Record Validations](http://guides.rubyonrails.org/active_record_validations.html)
    - [HTTParty](https://github.com/jnunemaker/httparty)
    - [A Third-Party API](http://pokeapi.co/)

#### Completion 

Completion for tonight's homework is to get through part 7. 

#### Part 1: Inflection! Migration!

Normally, Rails expects your table name to pluralized, and the corresponding model to be singular, i.e. Rails looks for a "moms" table when you use the `Mom` model. Unfortunately, the pluralization of "Pokemon" is "Pokemon". Fortunately for you, your instructor has changed the [`config/initializers/inflections.rb`](config/initializers/inflections.rb) file so that Rails will look for a "pokemon" table when you create a Pokemon model.

#### Part 2: A Migration! A Model!

Write a migration to create a "pokemon" table, then create the corresponding Active Record model.

- A __Pokemon__  has the following attributes:

  - `name` (mandatory and unique)
  - `weight` (mandatory)
  - `height` (mandatory)
  - `image_url` (mandatory)
  - `happiness_level` (mandatory)

To ensure your Pokemon model works as expected, go into the rails console (via `rails c`) and call `Pokemon.create()` with some appropriate values and make sure that the Pokemon was saved by calling `Pokemon.all`

#### Part 3: The Root Leads to the Pokemon...

- When the user visits the root path, they should be redirected to `/pokemon`
- When the user visits `/pokemon`, they should be presented with a header that reads "Caught Pokemon:", followed by an unordered list of links to all of the pokemon in the database.
- Beneath the unordered list of pokemon, add a link that says "Explore the Universe" that goes to `/explore`.

#### Part 4: Exploring Leads to a Random Poké-Clash, Obvs

- When the user visits the `/explore` path, they should be redirected to `/random_poke_clash`

#### Part 5: Random Poké Clash
- When the user visits `/random_poke_clash`, they should be presented with the `name`, `height`, `weight`, `happiness_level`, and image (via `image_url`) of a random pokemon, retrieved from the [RESTful Pokemon API](http://pokeapi.co/) using HTTParty.
    - __Note:__ You're going to have to hit the api twice: once for the basic information about the pokemon, and a second time to retrieve the URL that holds the sprite image of the Pokemon. Hmmmm... methinks you'll have to read the API docs and experiment.
    - __Secondary Note:__ For random selection of pokemon, it might be helpful to know that the Pokemon API has 778 pokemon

#### Part 6: Catching the Random Pokemon

- Beneath the information about the randomly selected pokemon, there should be a link that says "Head for the Hills!" that takes the user back to `/pokemon`
- There should also be a form submit button that says "Catch This Pokemon!". This form should fire off a POST request to `/pokemon` with all of the relevant information about the pokemon hidden in a set of unseen inputs.

#### Part 7: Persisting the Caught Pokemon

- POST requests to `/pokemon` should persist the Pokemon to the database (provided the pokemon hasn't been added previously), and redirect the user back to `/pokemon`. If all has gone according to plan, the random pokemon should appear in the list of caught pokemon. 
  - If the user already has this type of Pokemon, the Pokemon should not be added to the database, and the user should be redirected to `/random_poke_clash` and notified of their error. 

#### Bonus

- If the pokemon you're trying to catch has an "attack" rating (exposed by the Pokemon API) higher than 80: 
  - the pokemon shouldn't be added to your collection
  - you should delete the first Pokemon in your "pokemon" table (because it was destroyed by its adversary)
  - the user should be redirected to `/mourn_dead_pokemon`, where they should be notified of what Pokemon was destroyed so that they can mourn the loss. Make the page display [this gif](http://media.tumblr.com/tumblr_lqkt6vGdIb1qea590.gif).
- Make it pretty
