# The Apartment Complex

[![:image](http://31.media.tumblr.com/f16afb3ae2e601e8e501a51b6f8a1afc/tumblr_ms4msxSOnG1qj61t9o1_500.gif)](http://en.wikipedia.org/wiki/The_Apartment)

## Instructions

### The Problem

We need to model our portfolio of important real estate investments.

### Setup

1. Do the work in your student folder for today.
1. Save your changes using `git` often! At the very least, use `git add .` and `git commit -m "..."` after you finish each part. This means that whenever you submit your homework, you will send us your most updated work!
1. When specified work in the appropriately named file.
1. **[Timeboxing](http://en.wikipedia.org/wiki/Timeboxing)**: limiting how much time you will devote to a problem before you move on.
1. When prompted to define a class, write the class definition inside of a file with the same name as the class. (**Example:** A `Unicorn` class would be in a file named `unicorn.rb`)
1. The example code blocks should illustrate how the class could be used, either in `pry` or in a program.

### Completion

**Finish at least the first 4 parts.** As always: more is better; healthy living is best. Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

## Part 1

**filename `tenant.rb`**

Create a **tenant** class to store tenant data and behavior. A tenant should have the following attributes:

> Set at initialize
* f_name
* l_name
* born_on
* gender

> Set after instantiation with setter and getter methods
* nickname
* occupation

Example Usage:

```rb
p1 = Tenant.new("Calvin", "Clifford", "male", "December 21st, 1929")
p1.nickname = "Bud"
p1.occupation = "Office Drone"
```

## Part 2

A **tenant** should have a `full_name` method that returns a string of their first name, last name and nickname (if they have one).

Example Usage:

```rb
p1 = Tenant.new("Calvin", "Clifford", "male", "December 21, 1929")
p1.nickname = "Bud"
p1.full_name #=> "Calvin 'Bud' Clifford"
```

## Part 3

**filename `apartment.rb`**

An **apartment** should have the following attributes:

> Set at initialize
* unit
* num_beds
* num_baths
* tenants (the collection of people renting the apartment)

Example Usage:

```rb
a1 = Apartment.new("B", 2, 1)
```
## Part 4

An **apartment's** price should be dynamically calculated based on the number of beds ($1000 per bed) and the number of bathrooms ($500 per bathroom).

Example Usage:

```rb
a2 = Apartment.new("A", 2, 1)
a2.price #=> "$2500"
```

## Part 5

An **apartment** should have a predicate method to determine if it's a studio (has only one bedroom).

Example Usage:

```rb
a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a1.studio? #=> false
a2.studio? #=> true
```

## Part 6

An **apartment** should have *several* methods related to its tenants.

`move_in` should take a tenant object as input and add it to the list of tenants.

Example Usage:

```rb
a1 = Apartment.new("B", 1, 1)
p1 = Person.new("Fran", "Kubelik", "female", "May 8, 1935")
a1.move_in(p1)
a1.tenants          #=> [#<Tenant:0x01>]
                    #   The above means an array
                    #   of Tenant instances!
a1.tenants.class    #=> Array < Object
a1.tenants[0].class #=> Tenant < Object
a1.tenants.size     #=> 1
```

## Part 7

`empty?` should return `true` if an apartment doesn't have any tenants and `false` if it has tenants.

Example Usage:

```rb
a1 = Apartment.new("B", 1, 1)
a1.empty? #=> true
p1 = Person.new("Fran", "Kubelik", "female", "May 8, 1935")
a1.move_in(p1)
a1.empty? #=> false
```

`full?` should return true if the number of tenants in an apartment is equal to the number of bedrooms.

Example Usage:

```rb
a2 = Apartment.new("B", 2, 1)
p1 = Tenant.new("Al", "Kirkeby", "male", "January 23, 1949")
p2 = Tenant.new("Karl", "Matuschka", "male", "June 27, 1949")
a2.empty? #=> true
a2.full?  #=> false
a2.move_in(p1)
a2.empty? #=> false
a2.full?  #=> true
a2.move_in(p2)
a2.full?  #=> true
```

## Part 8

If you try to add more tenants than an apartment's bedrooms you'll receive a message `"We're full! <TENANT NAME> can't move in!"`

Example Usage:

```rb
p1 = Tenant.new("Mildred", "Dreyfuss", "female", "July 18, 1942")
p2 = Tenant.new("Jeff", "Sheldrake", "male", "November 18, 1941")
p3 = Tenant.new("Joe", "Dobisch", "male", "May 17, 1939")
a3 = Apartment.new("F", 2, 1)
a3.move_in(p1)
a3.move_in(p2)
a3.full?        #=> true
a3.move_in(p3)  #=> "We're full! Joe Dobisch can't move in"
a3.tenants.size #=> 2
```

## Part 9

**filename `building.rb`**

A **building** should have the following attributes:

> At initialize
* address
* number of floors

> with getters and setters
* apartments

Example Usage:

```rb
b1 = Building.new("208 Leonard St", 3)
b1.apartments #=> []
```

Define an instance method called `add` that takes the floor number and an apartment object as inputs and adds that apartment to the specified floor.

Example Usage:

```rb
a1 = Apartment.new("B", 2, 1)
a2 = Apartment.new("A", 1, 1)
a3 = Apartment.new("A", 1, 1)

# Specifiy the floor and apartment object
b1.add(1, a1)
b1.add(1, a2)
b1.add(2, a3)
```

Define an instance method called `floor` that takes a floor number as an input and returns an array of the apartments on that floor.

Example Usage:

```
b1.floor(1) #=> [<#Apartment:01>, <#Apartment:02>]
b1.floor(2) #=> [<#Apartment:03>]
```

Define an instance method called `collect_rents` that returns the combined prices of its apartments.

Example Usage:

```rb
b1.collect_rents #=>    #=> 1000000
```

Define a predicate method called `vancancies?`
that returns true if any of the apartments aren't full.

```rb
b1 = Building.new("208 Leonard St", 3)
p1 = Tenant.new("Al", "Kirkeby", "male", "January 23, 1949")
a1 = Apartment.new("B", 2, 1)
a1.move_in(p1)
b1.vancancies? #=> true
```

## Bonus

Require Ruby's 'date' library and save a tenant's `born_on` attribute as a `Date`.

Example Usage:

```rb
p1 = Tenant.new("Mildred", "Dreyfuss", "female", "July 18, 1942")
p1.born_on.class #=> Date < Object
```

Implement an `age` method that returns their age in years.

Example Usage:

```rb
p2 = Tenant.new("Jeff", "Sheldrake", "male", "November 18, 1941")
p2.age #=> 73
```

## Bonuser

Write a command line interface that manages your buildings, apartments, and tenants.
