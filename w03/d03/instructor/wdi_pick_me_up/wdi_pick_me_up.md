## WDI Pick-Me-Up

You have been tasked with creating your own version of [Emergency Compliment](http://emergencycompliment.com/), except with  WDI-themed compliments. When a user visits the site, they should be greeted with a WDI-themed compliment to cheer them up.

#### Completion

Completion for tonight's assignment is to get through part 3.

#### Part 1: Directory Setup

Within your `wdi_pick_me_up` directory, add the following files and __make sure you can start your server before moving on:__

- `app.rb`
- `config.ru`
- `views/index.erb`
- `public/style.css`

#### Part 2: Generate and Serve a Generic Compliment

When you visit the root (`"/"`) of your app, it should display:
- a generic greeting 
- a randomly chosen compliment (sample comments below)
- an achor (`<a>`) tag that links back to the root (`"/"`) and displays the text `"I'm still emotionally vacant. Give me another compliment."`
- another anchor tag, but this one displaying the text `"I'm ready to soldier on."`, and takes the user to the Ruby docs when clicked.

```ruby
# some sample compliments
compliments = [
  "People behind you in class think you are the perfect height.",
  "Your instructors think you're young.",
  "Your posture during breaks effectively masks your exhaustion.",
  "Your commit messages are Kafka-esque",
  "Your fingers are magic on the keys",
]
```

#### Part 3: Personalized Compliment ()

When you visit `"/:name"` (ie: `"/kamari"`), the greeting should personalize itself to the provided name. There should still be a random compliment.

#### Part 4: Randomize Background Color

Make it so that anytime the page is loaded or refreshed, the background color changes. 

#### Part 5: Make It Look Good

Style really hard with css.

#### Part 6: User-Submitted Compliments
   
Allow a user to add to the list of compliments using a POST request to `"/compliments"`.

#### Part 7: Share the Love

Deploy this to the world on Heroku so your WDI friends all over the world can hit it in moments of profound debilitation.
