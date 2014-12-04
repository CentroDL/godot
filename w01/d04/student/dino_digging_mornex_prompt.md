# Dino Skull-Duggery

![John Hammond ponders the past](img/john_hammond.jpg)

> Hello there, friend! My name is John Hammond, and I am a *collector* of sorts. I have a lucrative venture I'm working on; I call it *Jurassic Park*! It will be the greatest museum ever for dinosaurs... All I need are the samples. Can you help me find them?

Do you have what it takes to go into business with eccentric billionaire John Hammond? Working with complex data structures is part of the job, and it's vital that you get used to it.

## Directions

Begin a new `pry` session, and then copy and paste the following code into it. Answer the questions in Part 1 below. After that, work for each part should be done in the files named.

```ruby
hammonds_mines = {
  :working => [
    {
      :location      => "Mongolia",
      :depth         => "150 meters",
      :annual_budget => 850_000,
      :specimens => [
        "Brachiosaurus",
        "Triceratops", 
        "Gallimimus",
        "Compsognathus"
      ]
    },
    {
      :location      => "Nicaragua",
      :depth         => "200 meters",
      :annual_budget => 1_500_000,
      :specimens => [
        "Tyrannosaurus Rex", 
        "Stegosaurous", 
        "Triceratops"
      ]
    },
    {
      :location      => "Patagonia",
      :depth         => "400 meters",
      :annual_budget => 1_200_000,
      :specimens => [
        "Dilophosaurus", 
        "Brachiosaurus",
        "Triceratops",
        "Velociraptor"
      ]
    }, 
    {
      :location      => "Mexico",
      :depth         => "350 meters",
      :annual_budget => 900_000,
      :specimens => [
        "Stegosaurous",
        "Gallimimus",
        "Parasaurolophus"
      ]
    }
  ],
  :planned => [
    "China",
    "Nicaragua 2"
  ]
}
```

## Part 1 &ndash; Access information in the data structure

1. What kind of data structure is `hammonds_mines`?
1. How many "working" mines does he have? How many are "planned"? Save each to appropriately named variables.
1. Access the depth of John Hammond's mine in Mexico. Save the depth to an appropriately named variable.
  - What is the data type of the depth?
  - Can you write a Ruby statement that will tell us if it under the limit for unregulated mines in Mexico, which is 200 meters? What would that statement be?
1. Access the annual budget for Hammond's mine in Patagonia. Save the budget to an appropriately named variable.
  - If there are 50 workers there, how much is the maximum each can be payed every month (in US dollars)?
1. Access the list of dinosaur specimens found in Nicaragua.
1. Access all the Stegosaurouses.

Once you have the answers to the above questions (and the code snippets for each), stop.

## Part 2 &ndash; Interact with the data in the structure

**File name**: `analyse_mines.rb`

1. The budget must be cut! Write a program to print an array (in a variable named `low_budget_mines`) of only the mines with a budget at or below `1_000_000`
1. Add to that program a printout of an array (in a variable named `high_yield_mines`) only of the mines that have 4 or more specimens.
1. Finally, add to the program so that it prints out a hash of each mine's location and it's budget per specimen, to determine the most useful mines.

## Part 3 &ndash; Add and remove data in the structure

**File name**: `mines_growth_plan.rb`

1. Nicaragua's not cutting it! Write a program that removes Nicaragua from the working mines.
1. Update the program to add the name "Nicaragua" to a new array of mines (like "working" or "planned"), called "defunct" (as a symbol).
1. Upgrade our planned "Nicaragua 2" mine! Our program should also remove it from the list of planned mines and add a new working mine with the following data:
  - location: Nicaragua 2, depth: 50 meters, annual budget: $100,000, and no specimens yet

## Part 4 &ndash; Begin working with the data structure

**File name**: `project_jp_top_secret.rb`

Your budget has been re-upped and you've decided you're going to open a park using the DNA specimens found in Nicaragua (they're the most popular). For this part, use the original data structure above (not the output of Part 3)!

Write a program that:

1. takes a user's decision about a location, after printing the working locations,
1. prints out a list of the specimens found there.

> **There's a big problem**; it's a liability to create dinosaurs that can breed in the wild, so you have to add a dash of hermaphroditic frog DNA to ensure they can't breed, **but you can't ruin the original specimens**. Use the appropriate tool to create a new array of dinosaurs specimens, each "with a dash of hermaphroditic frog DNA!" For example: "Tyrannosaurus Rex with a dash of hermaphroditic frog DNA"

1. Update our program to output the list of specimens "with a dash of hermaphroditic frog DNA."
