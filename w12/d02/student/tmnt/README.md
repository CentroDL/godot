## Teenage Mutant Ninja Turtles Templating

You've been tasked with creating a simple one-page app for the Teenage Mutant Ninja Turtles' rodent overlord, Splinter, whose goal it is to reinforce your understanding of templating.

#### Exercise Objectives

- gain additional experience using lodash for templating
- gain additional experience working in rails

#### Configuration

```bash
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed
bundle exec rails s
```

#### Resources 

What's at your disposal?

- An API ripe with turtle data via the index route: i.e. `GET '/turtles'`. 
- Each turtle you get back will have an `id`, `name`, `eyeband_color`, `weapon`, and `image_url`.
- a pre-existing div of class "content-wrapper" to which you will append and from which you will remove your views.

## Specs

### Specification 1

When folks visit the root (`/`) url, I'd like them to be presented with a list of the 4 ninja turtles. The template for a turtle list item can be found at `#turtle-list-item-template`. Look the template over to get a sense of what needs to go where, and take heed: you will have to make changes to the template to make it dynamic. 

Oh, and this list view should also be presented when visitors click "TURTLES INDEX", so that later on people have a way back to this view. 

__ThoughtGuide:__ 

- the template identified can be used in one of two ways: we can either A) insert iteration logic INTO the template via clownhats, or B) call on the template 4 times from within our render function as we iterate through the collection of turtles. Which do you prefer, and why?

- The specification asks us to display the list of turtles when visitors go to the "#turtles" deeplink, but that involves building a backbone router from the outset. To keep our code base as simple as possible upfront, it might be helpful to build out and append your list of turtles *without* the router, at least for proof of a working view. 

___

### Specification 2

I want to be able to click on a particular turtle from the listview, have the list disappear, with the targeted turtle's profile view taking its place. You'll find a template for the profile in the script tag at "#turtle-profile-template".
