# Police Academy

![Police yelling](img/police_yelling.jpg)

Let's explore a good use of class methods: creating new instances! We do this a
lot with the standard class method `.new`, but we can make other methods (often
called *factory* methods) to create new instances.

### Part I - Setup

First, let's set up a simple file structure and class!

1. Make a file called `police.rb`.
1. In that file define a class `Police` that has the attributes:
  - `name`,`badge`, both of which we can *read*
1. Make a new file called `police_academy.rb`. Load both `pry` and the `Police`
class into it. Test your class with the following code:

```ruby
police_man   = Police.new("Moses Hightower", "A120CD324D") # name, badge number
police_woman = Police.new("Laverne Hooks", "444BB178D7")

if police_man.name == "Moses Hightower"
  $stdout.puts("#name works!")
else
  $stdout.puts("#name doesn't work!")
end

if police_woman.badge == "444BB178D7"
  $stdout.puts("#badge works!")
else
  $stdout.puts("#badge doesn't work!")
end
```

### Part II - Police Academy

1. Make a file called `person.rb`, and define in it a `Person` class with the
attribute:
  - `name`
1. Load `Person` in to `police_academy.rb`
1. Run the code below:

```ruby
steve_guttenberg = Person.new("Carey Mahoney")
wacky_police = Police.new(steve_guttenberg.name, "DBB001944A")
```

> What is happenning above? What is the input and output of each method?

### Part III - Training

1. Write a new class method `Police.train`. `Police.train` takes a single
argument, a `Person`, and returns a police instance.

> A fun way to generate random hex numbers, like used in the badges above, is:
> ```ruby
> require "securerandom"
> SecureRandom.hex[0..9].upcase
> ```

Make sure the following code works:

```ruby
steve_guttenberg = Person.new("Carey Mahoney")
wacky_police     = Police.train(steve_guttenberg)
wacky_police.name         #=> "Carey Mahoney"
wacky_police.badge.class  #=> String
wacky_police.badge.length #=> 10
```

### Part IV - Duty

1. Add an attribute that can be changed to every instance of police:
  - `duty`
1. Assign a new police instance a duty!
1. Add a constant called `DUTIES` to `Police`, that consists of:

```ruby
DUTIES = ['traffic','beat','vice','homicide','internal affairs']
```

> How could we give a new police instance we are training a duty by default?

Make sure the following code works:

```ruby
steve_guttenberg = Person.new("Carey Mahoney")
wacky_police     = Police.train(steve_guttenberg)
wacky_police.name         #=> "Carey Mahoney"
wacky_police.badge.class  #=> String
wacky_police.badge.length #=> 10
Police::DUTIES.include?(wacky_police.duty) #=> true
```
