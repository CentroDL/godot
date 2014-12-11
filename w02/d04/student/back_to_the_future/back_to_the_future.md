# Back to the Future

![:image](http://media.giphy.com/media/dgEIhYAo3lZiE/giphy.gif)

> **Marty McFly**: Wait a minute, Doc. Ah... Are you telling me you built a time
> machine... out of a DeLorean?

> **Dr. Emmett Brown**: The way I see it, if you're gonna build a time machine
> into a car, why not do it with some style?

Welcome to a fantastic voyage through the world of time-traveling vehicles of different
sorts and the wacky men and ladies who love them. There are so many behaviors to
implement here, and so many states to alter, that we can just craft some crazy,
mixed up models from Modules and Classes all night long. Let's get started!

## Setup

> Last night, Darth Vader came down from planet Vulcan and told me that if I
> didn't take Lorraine out that he'd melt my brain.

1. Create all of your Classes and Modules in files named after the Class or
Module, but in `snake_case`. For example:

```bash
vehicle.rb
car.rb
modules/time_travelable.rb
modules/flyable.rb
```

- Create another file called `back_to_the_future.rb` that requires all of your
classes and runs your program. You can add `require 'pry'` to this file.
- Note: if you use any file's information inside any other's (for example, using a
Module as a *mixin*), you'll have to require it in *that file*.
- **Do not read ahead!** Always do what is asked of you in the given line or
bullet point *only*! Run your code in Ruby or Pry to check that it works. Then
run it through the tests for each part to ensure your code is up to specification
before moving on to the next part!

### Completion

**Finish at least the first 4 parts.** As always: more is better; healthy living is best. Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

## Part 1 (Prologue) – Make a Class

> Lorraine, my *density* has brought me to you...

We need to populate our world with some objects. In particular, we need some
**vehicles**.

1. Create a new class `Vehicle`.
  - `Vehicle`s are initialized with the the following attributes:
    - `description`, a string
    - `capacity`, an integer
    - `location`, a string
    - `passengers`, *The pluralization suggests using _what type of data structure_?*

```ruby
blades = Vehicle.new('roller blades', 1, 'Central Park')
blades.description #=> "roller blades"
blades.capacity    #=> 1
blades.location    #=> "Central Park"
blades.passengers  #=> []
blades.add_passenger("Dad")
blades.passengers  #=> ["Dad"]
```

## Part 2 – Add Behavior

> I guess you guys aren't ready for that yet, but your kids are gonna love it...

Let's add some behavior to our vehicles!

1. While the attribute `capacity` often means the maximum number of
   passengers a vehicle can have, `Vehicle`s can actually have *more*
   passengers than `capacity`! Take *that* Safety School!
1. Add the instance method `#in_danger?`, which returns `true` when there are
   more passengers than `capacity`!
1. Finally, vehicles can **go**:
    - they have a method `#go_to` that takes an argument and sets it as the
    `location`, returning a descriptive line, but...
    - they can't go unless there is at least one passenger!

Run your class through this test code to ensure it works right!

```ruby
v1 = Vehicle.new('horse and buggy', 4, 'Burton, OH')
v1.description
#=> "horse and buggy"
v1.passengers
#=> []
v1.go_to('the barn dance!')
#=> "This horse and buggy is empty!"
v1.location
#=> "Burton, OH"
v1.add_passenger('Jacob Miller')
v1.add_passenger('John Miller')
v1.add_passenger('Isaac Miller')
v1.add_passenger('Mark Yoder')
v1.in_danger?
#=> false
v1.passengers
#=> ['Jacob Miller','John Miller','Isaac Miller','Mark Yoder']
v1.add_passenger('Sarah Hershberger')
v1.in_danger?
#=> true
v1.go_to('the barn dance!')
#=> "The horse and buggy is off to the barn dance!"
v1.location
#=> "the barn dance"

v2 = Vehicle.new('skateboard', 1, 'Asbury Park, NJ')
v2.location
#=> "Asbury Park, NJ"
v2.add_passenger('Jerry Viatelli')
v2.go_to('the Boardwalk') # to grind...
v2.location
#=> the Boardwalk
v2.add_passenger('Marky Longello')
v2.in_danger?
#=> true
```

## Part 3 – Inheritance with Super

> Nobody calls me... *chicken*!

**A.** Create a `Train` class that inherits from `Vehicle`.
  - when you `#pull_the_rope` on the train, it goes: `"Woo woooo!"` (**returns
    that as a string**)

```ruby
orient_express = Train.new('passenger train', 100, 'Istanbul')
"Woo woooo!" == orient_express.pull_the_rope #=> true
```

**B.** Create a `Skateboard` class that inherits from `Vehicle`.
  - Let's make it easy to initialize our Skateboards: all of them will have a
    capacity of **1**. (*Does this mean we have to rewrite, aka __override__,
    the super-class `Vehicle`'s initialize method?!*)
    - **NOTE**: you can call overriden methods (in the super-class) from the
      sub-class by using the keyword `super`
      - For example, you can call the method `Vehicle#initialize` in `Skateboard`
        by writing `super(description, capacity, location)`

```ruby
my_sweet_deck = Skateboard.new('SantaCruz™', 'Washington Square Park')
```

**For more reps with inheritance and `super`, see the Inheritance Bonuses 1
&amp; 2 below.**

## Part 4 – Complex Inheritance with Overriding

> No, no, no, no, no, this sucker's electrical, but I need a nuclear reaction to
> generate the 1.21 gigawatts!

Define a `Car` class. This class should inherit from the `Vehicle` class.

1. `Car`s `initialize` method should take 5 arguments and set them to instance
variables, accesible as attributes on `Car` objects.
  - `capacity` (same as `Vehicle`)
  - `year_produced`
  - `make`
  - `model`
  - `color` (setter and getter)
  - `location` (same as `Vehicle`)
1. `Car`s `initialize` should also:
  - assign a `passengers` instance variable to an empty array (same as
    `Vehicle`), and
  - assign a `fuel` instance variable to `false` by default.
1. `Car` should provide a getter for the `fuel` attribute.
1. `Car` should override the `description` getter to return:
  - `"#{color} #{year_produced} #{make} #{model}"`
1. `Car` has an **instance method** called `refuel` that:
  - changes the the fuel instance variable to `true` if the value is currently
    `false`, and returns `true`
  - puts the string `"No need to top off!"` to standard error, if the fuel value
    is currently `true`.
1. Lastly, `Car` should override the `#go_to` method, so that it:
  - returns `false` if there is no fuel (`#fuel` is false), and
  - should deplete the fuel (set the `fuel` to `false`) whenever you succesfully
    go anywhere.
  - otherwise, acts the same as it always did -- it changes your location!

```ruby
delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
delorean.add_passenger('Marty McFly')
delorean.refuel             #=> true
delorean.refuel             #=> true
delorean.go_to('the dance') #=> "You're now at the dance."
delorean.fuel               #=> false
```

## Part 5 – Inheritance with Modules as Mixins

> If my calculations are correct, when this baby hits 88 miles per hour...
> you're gonna see some serious shit.

#### IMPORTANT: For both `Vehicle` and `Car`.

1. Add `require 'date'` above each class definition (loading Ruby's `Date` and
   `Time` classes).
1. Add a `location_in_time` instance variable to each class's `initialize`
   method.
1. Assign the instance variable (`location_in_time`) to
  [`Date.today`](http://ruby-doc.org/stdlib-2.1.2/libdoc/date/rdoc/Date.html#method-c-today).
1. Add getter **and** setter methods for `location_in_time` to each class!

**(We often need to make changes to our objects and their interfaces to allow
them to use mixins or other libraries!)**

Make sure the following works:

```ruby
delorean = Car.new(2, 1981, 'DeLorean', 'DMC-12', 'gray', 'Hill Valley')
delorean.location_in_time == Date.today #=> true
```
#### Now we can continue!

1. Extend the `delorean` with `TimeTravelable` module, which can be found in
   `modules/time_travelable.rb`.
1. Take it for a test drive using the `go_back_in_time` and `go_forward_in_time`
   methods.
1. `go_back_in_time` and `go_forward_in_time` both take 3 arguments as integers:
   `years`, `months`, and `days`.

===

## Bonus – Creating Our Own Mixins

> Roads? Where we're going, we don't need roads.

1. Create a new module named `Flyable` (most mixins' name's are in the format
"-able").

- Give your module the following abilities:
    - `#fly_to`, takes a *destination* param, that calls `self.go_to` with the
    param. When it's successful it returns:
        - `"Look at me now, ma! I'm flying to *destination*!"`
    - `#flies?`, no param, and always returns true!
    - Create a new sub-class of Vehicle called `Plane` that includes `Flyable`.
    - Extend a skateboard object, a car object, and a train object with `Flyable`
    and become an action movie hero(ine) and 80s hearthrob!

> **Dr. Emmett Brown**: Marty! What in the name of Sir Isaac H. Newton happened
> **here?

===

## Inheritance Bonus 1

Skateboards are special because you can `grind` and do `kickflips`! Add the
behaviors (which *only* work when there is a passenger!):

- `#grind`, no params, returns `"khkhkhkhkh klunck khkh"`
- `#kickflip`, no params, returns `"Rad! I can kickflip!"`
- `#goofy=` (a boolean) sets the `goofy` attribute. `goofy` is `false` by
    default
- `#goofy?` (no params) returns whether or not the passenger is riding it
    [goofy-footed](http://en.wikipedia.org/wiki/Footedness),
- Optionally, have the description now refer to the skateboard as a
`"#{@description} skateboard"`.

```ruby
my_sweet_deck = Skateboard.new('SantaCruz™', 'Washington Square Park')
my_sweet_deck.grind    #=> "This Santa Cruz™ skateboard is empty!"
my_sweet_deck.passengers << 'PJ'
my_sweet_deck.goofy?   #=> false
my_sweet_deck.goofy = true
my_sweet_deck.goofy?   #=> true
my_sweet_deck.grind    #=> "khkhkhkhkh klunck khkh"
my_sweet_deck.kickflip #=> "Rad! I can kickflip!"
my_sweet_deck.go_to('Chelsea Piers')
```

## Inheritance Bonus 2

Create a `Bicycle` class that inherits from `Vehicle`. Bikes are cool, but they
are *super* dangerous!

- Override the super-class (`Vehicle`) methods, so that you have a capacity
  of **2** always (just like we enforced 1 for skateboards).
- Whenever you have more than 1 passenger, `#in_danger?` returns true!
- When you have 2 passengers:
  - One-half of the time (`rand < 0.5`) when you try `#go_to` somewhere, you
    don't go there and instead return the string "Crash!!"
- When you have more than 2 passengers:
  - You never `#go_to` anywhere, you don't go there and instead return the
    string "Crash!!"
- When you crash, you lose all of your passengers!

```ruby
hot_ride = Bicycle.new('Huffy', 'Milwaukee, WI')
hot_ride.add_passenger('Travis')
hot_ride.add_passenger('Taryn' # pegs!)
hot_ride.in_danger?                  #=> true
hot_ride.go_to('Rich\'s Restaurant') #=> "Crash!!"
hot_ride.passengers                  #=> []
```

> **Final question:** was it even smart to inherit the `Bicycle` from the
> `Vehicle` class?
