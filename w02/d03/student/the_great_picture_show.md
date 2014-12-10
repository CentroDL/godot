# The Great Picture Show

![:image](http://www.blogcdn.com/www.mandatory.com/media/2013/06/tumblrmf8sigk90d1r1ibsxo1500.gif)

### Instructions

For the following assignment you'll be shown code snippets from an imaginary program. For each part **write the real code** that would make it work so that when you type all these into pry it runs!

Tonight's assignment will demonstrate the expected output of your code using code snippets and *introspection*.

**Introspection** is the ability of a program to examine the type or properties of an object

### Setup

1. Do the work in your student folder for today.
1. Save your changes using `git` often! At the very least, use `git add .` and `git commit -m "..."` after you finish each part. This means that whenever you submit your homework, you will send us your most updated work!
1. When specified work in the appropriately named file.
1. **[Timeboxing](http://en.wikipedia.org/wiki/Timeboxing)**: limiting how much time you will devote to a problem before you move on.
1. When prompted to define a class, write the class definition inside of a file with the same name as the class. (**Example:** A `Unicorn` class would be in a file named `unicorn.rb`)
1. The example code blocks should illustrate how the class could be used, either in `pry` or in a program.

### Completion

**Finish at least the first 3 parts of `the_great_picture_show.md`.**

As always: more is better; healthy living is best. Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

## Part 1

Define a class called `Movie` so that if you entered the following code it would result in the output below.

```rb
flick = Movie.new
```

> Wait, where do I write that?

#####Remember! It's up to **you** to figure out how to make the correct expected output.

So maybe start with `movie.rb`

> OK!

Now imagine your code changed to give you the following error:

```rb
flick = Movie.new #=> ArgumentError: wrong number of arguments (0 for 1)
```

> Uh oh! How could I have gotten that error?

What if I told you `Movie.new` took `title` as an argument?

> OK so I'll define a class called `Movie` that takes `title` when I initialize it.

## Part 2

Imagine you've instantiated an *instance* of a class `Movie` with the title "Jaws" and assigned it to a variable `flick`.

For the following code to work what would you have to write?

```rb
flick.class              #=> Movie < Object
flick.is_a? Movie        #=> true
flick.title              #=> "Jaws"
flick.title.is_a? String #=> true
```

## Part 3

Imagine we could call `Movie#director`

```rb
movie.director #=> nil
movie.director = "Richard Ayoade" # >> "Director can only be set to a Person object!"
movie.director #=> still nil!
```

> Oh come on! A Person object?!

## Part 4

Imagine you made that `Person` class!

```rb
p1 = Person.new
```

Then we could try reassigning again!

```
movie.director = p1
movie.director.is_a? Person #=> true
```

## Part 5

But THEN what if you got this error?

```rb
p1 = Person.new
#=> ArgumentError: wrong number of arguments (0 for 2)
```

People usually have a `name` and a `birth_date` right?

> ಠ_ಠ

## Part 6

Ok. So if we got a `Movie` class and a `Person` class down we should be able to do some of the following

```rb
flick.director = p1
flick.director.is_a? Person          #=> true
```

## Part 7

Let's take a break from that for a second. What would we need to create the following code?

```rb
s = Score.new(0.45)
s.to_s #=> "45%"
s.reviewed_by.class #=> NilClass < Object
```

> Oh `Score#reviewed_by` returns nil. I'll just assign it to a Person

```rb
s.reviewed_by = Person.new("Roger Ebert", "June 18, 1942") # >> Opps! Reviewer should be a Critic Object!
           #=> nil
```

Are critics people?

> ...

```rb
Critic.public_instance_methods.include?(:name)       #=> true
Critic.public_instance_methods.include?(:birth_date) #=> true
```

Reminds me of a Person class.

> But does it bleed?


## Part 8

It's coming hard and fast now!

```rb
flickr.script.class        #=> Script < Object
flickr.script.writer.class #=> Person < Object
flickr.script.plot.class   #=> String < Object
```

Imagine we created an instance of a Script class with the following readers and writers

```rb
script.writer = "Robert Zemeckis"
script.plot   = "A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence."
```

## Part 9

And then did the following:

```rb
flickr.script = script
flickr.to_novelization.is_a? String #=> true
flickr.to_novelization #=> "Back to the Future! by Robert Zemeckis. A young man is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence. THE END"
```

> Better than the movie!

![:image](https://31.media.tumblr.com/tumblr_m60mv5CTcO1qciafbo1_500.gif)

## OR IS IT?!

Write code that would make the following example work!

```rb
r = Rating.new("PG")
r.message = "Some material may not be suitable for children"
r.minimum_age = 13

p1 = Person.new("Gary", "January 2, 2002")
p2 = Person.new("Barry", "January 2, 1949")
p1.age #=> 12
p2.age #=> 65

r.suitable_for?(p1) #=> false
r.suitable_for?(p2) #=> true
```

*Spoilers*

```rb
m = Movie.new("Star Wars")
r = Rating.new("PG")
m.rating = r

d1 = Person.new("George Lucas", "May 14, 1944")
m.director = d1

m.script = Script.new
m.script.writer = d1
m.script.plot = "A boy becomes a man in space!"
m.script = script

s1 = Score.new(0.45)
s2 = Score.new(1)
c1 = Critic.new("Roger Ebert", "June 18, 1942")
c2 = Critic.new("Gene Siskel", "September 9, 1943")
s1.reviewed_by = c1
s2.reviewed_by = c2

m.scores.push(s1, s2)
```
