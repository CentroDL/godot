# WDI Week 01 Assessment

![image](http://diabetes.niddk.nih.gov/dm/pubs/complications_kidneys/images/Dr_BP_Check.jpg)

Congratulations on your first week of WDI!

At the end of certain weeks we'll assess your progress through the week's 
material with a series of short questions.  This gives us a dataset to talk 
about with you during one on one meetings and code reviews.

You'll be entering these questions in by hand.

> Write your answers in the prompts in the boxes below

# Bash

Imagine the following directory structure exists at `~/titanic`

```sh
titanic/
├── first_class
│   └── rose.md
├── second_class
└── third_class
    └── jack.md
```

```sh
# What command displays the present working directory?
$ pwd

# Create a file called `sos.txt` inside `~/titanic`.
$ touch sos.txt

# Move `jack.md` from `third_class` to `first_class`.
$ mv third_class/jack.md first_class

# Starting at `~/titanic/third_class` enter the commands to 
# move up to `~/titanic` and into `second_class`.
$ cd ..
$ cd second_class

# Remove `titanic/` and everything in it.
$ rm -rf titanic
```



# Git

```sh
# Write the commands to initialize a new git repo
$ git init

# Create a new file called `readme.md`
$ touch readme.md

# Add and commit the file with the message "Initial commit"
$ git add readme.md
$ git commit -m 'Initial commit'

```

# Variables

```rb
# Assign the string "tacos" to a variable called `lunch_box`
>> lunch_box = 'tacos'

# Print the `lunch_box` variable to Standard Out in all capitals
>> $stdout.puts(lunch_box.upcase)

```

```rb
alpha = "a"
gamma = alpha.upcase
beta  = alpha.upcase!
alpha = "b"

# What are the current values of `alpha`, `beta`, and `gamma`?

>> current_value_of_alpha = "b"
>> current_value_of_beta  = "A"
>> current_value_of_gamma = "A"
```

# Conditionals

```rb
cavs_wins   = 9
knicks_wins = '4'

# Write a conditional statement that returns 
# "We're going to the Championship basketball game"
# if the cavs have more wins than the knicks

>> if cavs_win > knicks_win.to_i
>>   "We're going to the Championship basketball game"
>> end

```

# Data structures

## Arrays

```rb
# Create an array called `work_week` with strings representing each 
# weekday, ie 'Monday', 'Tuesday', et cetera
>> work_week = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']

# Remove 'Friday' from the array
>> work_week.pop

# Remove 'Monday' from the array
>> work_week.shift

# Add 'Saturday' to the end of the array
>> work_week.push('Saturday')

# Add 'Sunday' to the beginning of the array
>> work_week.unshift('Sunday')

```

## Hashes

```rb
# Create a hash called `brain` with a key of `energy_level` that points to the Fixnum value 10
>> brain = { 
>>   :energy_level => 10 
>> }

# Access the value 10 within the `brain` hash
>> brain[:energy_level]

# Add a `dream` key to the `brain` that points to the String value "Space Camp for Unicorns"
>> brain[:dream] = 'Space Camp for Unicorns'

```

## Methods

```rb
# Write a method to calculate the area of a rectangle (the product of its length and its width).
>> def area(length, width)
>>   length * width
>> end
```
