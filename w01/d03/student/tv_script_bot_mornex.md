# Television ScriptBots

![Futurama's Network Execubots][execubots]

> You may not have realized it, but television networks dabbled in computer-assisted scriptwriting during the '80s! In order to ease the mass production of widely-acceptable sitcom dramas without paying union scale, they created ScriptBots. Today, we get to build our own programs (ScriptBots) that will help us churn out some tame, banal entertainment!

Below are a series of [flowchart diagrams][flowcharts], also known as *[decision trees][decision_trees]*.

These flowcharts represent *branching logic* (also known as **conditionals**) and *looping logic* (also known as **loops**): which you have some practice writing in to programs! They show a *process flow* and all of the possible steps for completing a process. Each flowchart can be a self-contained ScriptBot!

## Directions

**For each flowchart, write a Ruby program** to output a complete script for an episode of television based on the rules given to you by the producers and marketers.

There are a few ways to represent such flowcharts, but we have chosen a very basic one: diamonds are for conditionals, rectangles are for regular actions, rounded rectangles are for starting or ending the process, and loops are created by actions directing to previous actions.

## Examples

> You may have heard that TV shows can be formulaic, but here is an actual formula! Let's represent the possible scripts that can be written for an episode of the hit shows *[Dallas][dallas_show]* and *[Mork and Mindy][mork_show]*!

#### Dallas

**File name:** `dallas.rb`

![Dallas flowchart][dallas_flow]

```ruby
script = "Opening theme and titles.\n"

# prompt for user input for a conditional
$stdout.puts("Is the tension high?")

# get user input and run the conditional
tension_is_high = $stdin.gets.chomp
if tension_is_high == "yes"
  script += "Good looking people scheme to destroy one another.\n"
else
  script += "Good looking people cry and make up.\n"
end

# finish the script string
script += "Roll credits."

# print out the completed script
$stdout.puts("OK, here is your script:")
$stdout.puts(script)
```

**Output:**

```
$ ruby dallas.rb
Is the tension high?
yes
OK, here is your script:
Opening theme and titles.
Good looking people scheme to destroy one another.
Roll credits.
```

#### Mork and Mindy

**File name:** `mork.rb`

![Mork and Mindy flowchart][mork_flow]

```ruby
script = "Opening theme and titles.\n"

script += "Mork acts outrageously.\n"

# loop with a question
$stdout.puts("Does Mork talk to his alien dispatcher?")
talk_to_aliens = $stdin.gets.chomp
while (talk_to_aliens == "no")
  script += "Mork acts outrageously.\n"

  $stdout.puts("Does Mork talk to his alien dispatcher?")
  talk_to_aliens = $stdin.gets.chomp
end

script += "Mork learns something about humans and tells the aliens."

# finish the script string
script += "Roll credits."

# print out the completed script
$stdout.puts("OK, here is your script:")
$stdout.puts(script)
```

**Output:**

```
$ ruby dallas.rb
Does Mork talk to his alien dispatcher?
no
Does Mork talk to his alien dispatcher?
yes
OK, here is your script:
Opening theme and titles.
Mork acts outrageously.
Mork acts outrageously.
Mork learns something about humans and tells the aliens.
Roll credits.
```

## ScriptBot 1 &ndash; [Married with Children][married_show]

**File name:** `married.rb`

![Married flowchart][married_flow]

## ScriptBot 2 &ndash; [Three's Company][threes_co_show]

**File name:** `threes_company.rb`

![Three's Company flowchart][threes_co_flow]

## ScriptBot 3 &ndash; [ALF][alf_show]

**File name:** `alf.rb`

![ALF flowchart][alf_flow]

## ScriptBot 4 &ndash; [Full House][full_house_show]

**File name:** `full_house.rb`

![Full House flowchart][full_house_flow]

## ScriptBot 5 &ndash; [Quantum Leap][quantum_leap_show]

**File name:** `quantum_leap.rb`

![Quantum Leap flowchart][quantum_leap_flow]

<!-- Links -->

[execubots]:         img/execubots.jpg
[flowcharts]:        http://en.wikipedia.org/wiki/Flowchart
[decision_trees]:    http://en.wikipedia.org/wiki/Decision_tree

[married_show]:      http://en.wikipedia.org/wiki/Married..._with_Children
[dallas_show]:       http://en.wikipedia.org/wiki/Dallas_%281978_TV_series%29
[mork_show]:         http://en.wikipedia.org/wiki/Mork_%26_Mindy
[alf_show]:          http://en.wikipedia.org/wiki/ALF_%28TV_series%29
[threes_co_show]:    http://en.wikipedia.org/wiki/Three%27s_Company
[full_house_show]:   http://en.wikipedia.org/wiki/Full_House
[quantum_leap_show]: http://en.wikipedia.org/wiki/Quantum_Leap

[married_flow]:      img/married.jpg
[dallas_flow]:       img/dallas.jpg
[mork_flow]:         img/mork.jpg
[alf_flow]:          img/alf.jpg
[threes_co_flow]:    img/threes_company.jpg
[full_house_flow]:   img/full_house.jpg
[quantum_leap_flow]: img/quantum_leap.jpg
