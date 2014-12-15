# L'Chaim! To Life!

> We know what we are, but know not what we may be. - Bill Shakespeare

##Learning Objectives

The purpose of this lab is to practice

  - get experience pair programming
  - gain muscle memory for creating classes and modules
  - get experience writing your own assertions
  - model a real world scenario in a program
  - think about different avenues for spiritual growth ☮

## Directions

We're going to start off with a series of assertions.
These assertions will not pass until you write the code to make them pass. Until this code passes you may see errors.

Create a `Person` class in a file called `person.rb`

Create a corresponding file called `person_spec.rb` where we'll be running our assertions.

Work with a partner making the following assertions pass. Take turns being the **Driver** (the programmer writing the code), switching roles after each assertion is made to pass.

```ruby
p1 = Person.new
assert_that("A person is alive at instantiation", p1.alive?, true)
assert_that("A person has an age of 0 at instantiation", p1.age, 0)
p1.age!
assert_that("A person can age", p1.age, 1)

assert_that("A new person does not have a name at birth", p1.name, nil)
p1.name = "Jim Kevin"
assert_that("We can set a person's name", p1.name, "Jim Kevin")

assert_that("a person has a brain hash", p1.brain.is_a?(Hash), true)
assert_that("a brain has memories", p1.brain.has_key?(:memories), true)
assert_that("a brain has love_ones", p1.brain.has_key?(:love_ones), true)
assert_that("a brain has interests", p1.brain.has_key?(:interests), true)

assert_that("A person can't remember anything before the age of 3", p1.memories, nil)
p1.age!
p1.age!
assert_that("At the age of 3 a person can hold memories", p1.memories.is_a? Array, true)
p1.remember("going to the bathroom under the piano")
assert_that("...and remember things", 
    p1.memories, 
    [{age: 3, memory: "going to the bathroom under the piano"}]
)

p1.get_interested_in("football")
assert_that("At the age of 3 a person has no interests", p1.interests.empty?, true)
p1.age!
p1.get_interested_in("crayons")
assert_that("a person can add interests", p1.interested_in?("crayons"), true)
assert_that("adding an interest adds a memory", 
    p1.memories.include?({age: 4, memory: "got interested in crayons"},
    true
)
```

Create two subclasses `Male` and `Female` that inherit from `Person`

Create two separate files and do all future assertions on instances of Male and Female.

## We're going to extend our classes with `modules`!

At certain ages along a person's life we're going to extend them with additional behaviors.

```ruby
m1 = Male.new
assert_that("A person can't learn before 4", m1.responds_to?(:learn!), false)
4.times { m1.age! }
assert_that("A Schoolable module is added at 4", m1.kind_of?(Schoolable), true)
assert_that("A person can learn once they turn 4",  m1.responds_to?(:learn!), true)
m1.learn_to("read")
assert_that("A person's learned abilities are stored in memory", m1.memories.include?({age: 4, "learned how to read"}))
assert_that("A person's skills can be queried", m1.knows_how_to?(:read), true)
assert_that("...if a person doesn't know something it returns false", m1.knows_how_to?(:dance), false)
```

## Life Goes On (The Employable Module)

At 14 a person should be able to `#work`. They should have a `#work` method, which returns a random string expressing displeasure with the workin' world.

> Can you add a `#get_a_job!` method that assigns a random job to a Person? Where would you store the array random jobs? How could you make the job stick to that instance?

## Be Mine (The Datable Module)

At 16 a person can date another person.  When you date someone you take a random interest of theirs.

>You don't love her. It was never love, Phillip.

## Love Me Tender (The Committable Module)

At a random point between 25 and 34 a Person may become able to marry.
If they're not Committable by 35 they will definitely become Committable (ie. able to marry) then.

If they have more than 3 interests in common with a another person they should be able to successfully marry. If they attempt to marry without the requisite 3 common interests the method will return false. They'll definitely want to remember this.

>Can you create a method to remove people from your loved ones array just by naming them. Call it `#no_longer_loves!(lover)`

## Ashes to Ashes

At any time a person can `#die!`  When someone dies their `@alive` status goes to false and all their memories are erased.  

> Can you make it so that every method returns nil except for alive?

## Bonus!

> Is there any point in ever having children?

Create a `Reproducible` module with an instance method called `#beget!`
`#beget!` creates a new Male or Female (ie baby), adds that baby into the caller's loved_ones array
and adds the caller into the baby's loved_one's array.
`Reproducible` should be included on the `Female` class.
Any female can reproduce, but they have to be older than 19.

## Bonuser!

> Where do we go when we die? And other heavy questions like that. ✌

Can you create a Reincarnatable module that uses Ruby's File library?
It should include `#save_memories` and `#load_memories`
`#save_memories` should write to a file called `person_memories_NAME.txt`
What when we call `die!` on a person that includes Reincarnatable we can have all their memories stored in a file called person_memories_NAME.txt
When we initailize a new person that is Reincarnatable we should load up the memories of a previous person with that name

Create a subclass of Person called `Buddhists` that includes the Reincarnatable module.
Each Buddhist should load up memories from a file when they're initialized.

# Homework!
  - review solutions
  - self assessments
  - solve old hws
  - read ruby style guide (apply it to your code)
  - write questions
