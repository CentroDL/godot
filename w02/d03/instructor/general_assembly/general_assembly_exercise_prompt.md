# Assembling General Assemb.ly

![GA Logo](http://www.maveron.com/blog/wp-content/uploads/General-Assembly-logo.jpg)

### Part I - Setup

Create an application file `ga_app.rb`. This is where you will write your test
code, your actions, your `binding.pry` invocations.

### Part II - The Most Important Ingredient

The first thing GA needs is students! Create a `Student` class in a `student.rb`
file. Students have the following attributes:

- `name`
- `birthdate`
- `shower_song`

A student is initialized with a name and a birthdate, and by default all of them
are given a shower song of `"Taylor Swift's 'Blank Spaces'"`.

The next thing GA needs is class! Create a `Cohort` class that has the
attributes:

- `name`
- `starts_on` (a start date)

### Part III - Get Busy Living!

1. Add some behavior to students:
  - `Student#eat` takes two arguments, a (1) mealtime (breakfast, lunch, dinner, third meal, etc.) and a (2) food (tacos, eg), and returns a string: `"That was good!"`
  - `Student#nap` returns the string "Zzzzzzzzzz" and sets the internal state of `@sleeping` to true
  - `Student#wake_up` returns the string "Wha-? I'm up." and sets the internal state of `@sleeping` to false
  - `Student#print` prints out all of the student's state
1. Add some behavior to cohorts:
  - `Cohort#add` takes a student as an argument, and returns the string "Welcome!"
  - `Cohort#roster` returns a list of students as an array

### Part IV - It's a New World

Now we are at GA. Create a file called `general_assembly.rb`: we are going to add a lot of the stuff that happens at GA to it!

1. Create a `GeneralAssembly` module inside the new file.
1. Add some behavior to the module:
  - `GeneralAssembly.eat` takestakes two arguments, a (1) mealtime (breakfast, lunch, dinner, third meal, etc.) and a (2) food (tacos, eg), and returns a string: `"Mmmmm, #{food}. I love #{mealtime}.`
  - `GeneralAssembly.nap` takes an integer, and returns one of two strings randomly (50% of the time): `"Sleep for #{an_int} minutes.`" or `"The pods are all full!"`
  - `GeneralAssembly.print` takes a string of what you want to print, and returns the string: `"email: print@ga.co\n Please print:\n#{a_string}"`
1. If you call `GeneralAssembly.eat` without a food item, it sets to oatmeal by default

### Part V - Learning

Add a new constant to the GA module:

```ruby
SPACES = {
  :902 => ["4th Floor", "3rd Floor"],
  :915 => ["4th Floor"],
  :USW => ["3rd Floor"]
}
```

Add a new behavior: `GeneralAssembly.study` that randomly picks one of the study spaces
