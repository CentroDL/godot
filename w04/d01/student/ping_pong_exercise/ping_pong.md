<!-- # Ping Pong -->

![Poster for the 2002 Hit Movie Ping Pong, based on the Manga Collection ピンポン](img/ピンポン.jpg)

We are now going to build a web application that reacts dynamically to an
ongoing interaction. In order to do this, we have to create "state" for our
application! In the future we are going to store data (ie, state) in a database,
but for our first foray into "stateful" applications we are going to store data
in memory.

Since we are using a class to model our servers with Sinatra, we will start with
a class model using *class variables*... We will start building our application
in the terminal, then use Sinatra to serve it via HTTP, and finally add an HTML
front-end!

## Setup

Create a new directory called `ping_pong` that will hold your app.
Within this folder, create the file `game.rb`. As we progress thru building the
app you will add more files or folders, all within the folder `ping_pong`.

In the beginning, the rules for the game are this:

1. We (**the player**) will always play **the computer**.
1. **The player** starts the game by "serving" the ball.
1. **The computer** will respond by "hitting" the ball back at **the player**,
   either to the left (known in our game as "ping"-ing) or the right (known in
   our game as "pong"-ing).
1. **The player** will have to then "hit" the ball also, naming where they are
   going to swing: *ping* or *pong* (left or right).
  - If the player swings on the correct side, then the computer has to "hit" the
    ball again.
  - If the player sings on the wrong side, then the player *loses*, and we play
    again!
1. Every time **the computer** tries to hit the ball, there is a chance that it
   will swing on the wrong side as well!
  - If the computer swings on the wrong side, then the player *wins*, and we
    play again!
  - We can set the computer player to be Easy, Medium, or Hard:
    + **Easy**: 50% chance of missing
    + **Medium**: 33% chance of missing
    + **Hard**: 25% chance of missing

We will add to these rules as we build the app, but this is the basis for the
game.

### Completion

**Try to finish the first five parts.** Part Four is not necessary, but helpful
to complete Part Five. As always: more is better;
healthy living is best. Only do the bonus if you have completed every single
part.

## Part 1 - Modeling our Game

In your `game.rb` file, create the class `PingPong::Game`. This class
itself will hold state:

```ruby
@@state = nil
```

**Before moving on, answer to yourself the following questions:**

> What kind of variable is this? What is the state of our game right now? What
> are all of the possible states?

According to the above rules, we can say that the possible states for our game
are:

- waiting to play (no ongoing game, ie `nil`),
- the player has served the ball to the computer (`:served`),
- the computer has "hit" the ball towards "ping" (`:ping`),
- the computer has "hit" the ball towards "pong" (`:pong`)

And that's it! Winning or losing the game is an action, but when either happens
the game state returns to "waiting to play" (win and lose are not, therefore,
"states").

**Now we can implement our game !**

## Part 2 - Accessing State

Create the following _class methods_ on the class `PingPong::Game`:

- a getter (reader) for our state...

> Can we use `attr_reader` here? Why or why not?

- a getter and setter called `difficulty` and `difficulty=`. The setter takes a
  Symbol as an argument (`:easy`, `:medium`, or `:hard`).

> Is this technically part of our model's data? If so, since we are
> modeling our game as a class, what kind of variable should we use to store it?
> How would we ensure that the game is set to `:medium` by default?

- the predicate methods:
  + `player_has_served?` that returns `true` if the state is not `nil` (ie, a
    game has begun)
  + `computer_has_hit?` that returns `true` if the state is `:ping` or `:pong`
  + `is_ping?` and `is_pong?`, that return `true` when the state is,
    respectively, `:ping` or `:pong`

## Part 3 - Adding Behavior

Create the following _class methods_ on the class `PingPong::Game`:

- a method called `serve!` that returns `true`, and as a side-effect sets the
  game state to `:served`
- a predicate method `miss?` that returns `true` or `false` randomly. Use the
  rules above and the class's difficulty settings to decide what percentage of
  the time it returns true.
- a method called `hit!` that:
  - returns `false` and ends the game (set the state to `nil`) if the computer
    misses the ball
  - returns `"ping"` and sets the game's state to `:ping` if the computer hits
    `:ping`
  - returns `"pong"` and sets the game's state to `:pong` if the computer hits
    `:pong`
- a method called `ping!` that:
  - returns `true` and sets the state to `:served` if the state was `:ping`,
    otherwise
  - returns `false` and ends the game
- a method called `pong!` that:
  - returns `true` and sets the state to `:served` if the state was `:pong`,
    otherwise
  - returns `false` and ends the game
- a method called `end!` that always sets the state to `nil` (ends the game)

At this point we should have a working game model!

The following should all work:

```ruby
PingPong::Game.serve!
#=> true
PingPong::Game.hit!
#=> :ping
PingPong::Game.ping!
#=> true
PingPong::Game.hit!
#=> :ping
PingPong::Game.pong!
#=> false
```

## Part 4 - A Terminal Front-end

Now we can play the game via a terminal interface. Create a new file called:
`terminal.rb`, include your `PingPong::Game` model from above, and make it do
the following!

Print out to the user, when beginning the game:

```
Hello and Welcome to Ping Pong, the Terminal Game!

Enter your commands below:
1) serve: begin a game by serving
2) ping!: swing on the left (ping the ball!)
3) pong!: swing on the right (pong the ball!)
4) exit:  leave the game

>
```

After that, go in to a loop that takes user input and plays the game.

When the user inputs any command that isn't above, print the line(s):

```
I don't understand that command. I only understand:
serve, ping!, pong!, and exit.
```

If the user inputs `exit`, print the line:

```
Thanks for playing!
```

If the user inputs `serve`, then:

1. if a game hasn't started, then serve and then let the computer hit the ball,
   and print out to the user what the computer hit! (eg, `The computer has hit
   the ball to *ping*. Quickly, hit it back!`)
  - if the computer misses, print out to the user: `The computer missed! Nice
    win. The score is now Player 1 - Computer 0.`, or whatever the appropriate
    score is.

If the user inputs `ping!`, then:

1. if the game hasn't started, print: `Start the game first. Serve!`
1. if the computer has hit a ping, then print `Nice return!` and then let the
   computer hit the ball again (printing out the above message)...
1. if the computer has hit a pong, then print `You whiffed! The score is now
   Player 0 - Computer 1.`, or the appropriate score.

For `pong!`, do the above but with "pong"!

Once you have this game running correctly, ask yourself:

> Which methods on `PingPong::Game` did I use? Which didn't I? Why?
> Also: how did I implement the wins and losses counters?

Note: try and implement the wins/lossed counter using global variables.

## Part 5 - A Web Front-end

For this part, it may be easier to use `curl` than your web browser, but either
will work.

We will implement a web server in a file: `server.rb`. Create a Sinatra app the
necessary way (`config.ru`). This app will implement 4 routes:

- `GET /`
- `GET /serve`
- `GET /ping`
- `GET /pong`

`GET /` returns a string (NOT HTML YET!) with a similar welcome message to the
terminal game:

```
Hello and Welcome to Ping Pong, the Sinatra Game!

Go to the following paths to play the game:
1) /serve -- begin a game by serving
2) /ping  -- swing on the left (ping the ball!)
3) /pong  -- swing on the right (pong the ball!)
```

`GET /serve`, `GET /ping`, and `GET /pong` should all work the same as in the
terminal version. Example output:

```bash
$ curl localhost:9292/
Hello and Welcome to Ping Pong, the Sinatra Game!

Go to the following paths to play the game:
1) /serve -- begin a game by serving
2) /ping  -- swing on the left (ping the ball!)
3) /pong  -- swing on the right (pong the ball!)
$ curl localhost:9292/pong
Start the game first. Serve!
$ curl localhost:9292/serve
The computer has hit the ball to *pong*. Quickly, hit it back!
$ curl localhost:9292/ping
You whiffed! The score is now Player 0 - Computer 1.
$ curl localhost:9292/serve
The computer has hit the ball to *pong*. Quickly, hit it back!
$ curl localhost:9292/pong
The computer has hit the ball to *ping*. Quickly, hit it back!
$ curl localhost:9292/ping
The computer missed! The score is now Player 1 - Computer 1.
```

**Note: use global variables to hold the wins and losses. We can explain why if
you're interested. :)**

## Part 6 - Redirects

Add a new route `GET /end` that also looks for a param `player=win` or
`player=lose`, updates the wins/losses counter, and then redirects to the index
(`GET /`).

Add a wins/losses counter to your index route.

Make sure that when the player wins or loses they redirect to the correct route
and query string.

## Part 7 - HTML and Interactivity

Make the above routes return well-formatted HTML. Then add images to represent
the state of the game, and buttons/links instead of having to enter in the URL.

Deploy the game to Heroku!

## Bonus 1 - Make it Dynamic

Have the Sinatra version use a single route handler, that uses a `case`
statement to handle the input. At that point, the Sinatra and terminal versions
should have almost the exact same logic!

## Bonus 2 - A Better Game

1. Add the ability to change the difficulty of the game to the HTML version,
   using links, redirects, and params as necessary.
1. Add a timer to the game, so that any time the user hits the routes
   `GET /ping` or `GET /pong` slower than 1.5 secods after the previous
   response, then the user loses.

## Bonus 3 - Better Scorekeeping

1. Show the state of the game as well as the game history on every page.
1. Show the number of wins and losses on each page, and not just a single
   `GET /end` page.
1. Reset after a special page whenever the computer or the player racks up 10
   wins!
