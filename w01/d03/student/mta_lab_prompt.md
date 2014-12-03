# The Metropolitan Transportation Authority

### A Ruby Data Structures Lab

You will be creating a program that models a simplified version of the New York City subway system. You know your in WDI when you've done the MTA lab!

## Instructions

### Setup

1. Do the work in your student folder for today (`~/dev/wdi/godot/w01/d03/student`).
1. Save your changes using `git` often! At the very least, use `git add ...` and `git commit -m "..."` after you finish each part. This means that whenever you submit your homework, you will send us your most updated work!
1. Work for each part should be done in the files named below.

### The Problem

1. There are 3 subway lines:
  - The N line has the following stops: `Times Square`, `34th`, `28th`, `23rd`, `Union Square`, and `8th`
  - The L line has the following stops: `8th Ave`, `6th Ave`, `Union Square`, `3rd Ave`, and `1st Ave`
  - The 6 line has the following stops: `Grand Central`, `33rd`, `28th`, `23rd`, `Union Square`, and `Astor Place`.
1. **All 3 subway lines intersect at Union Square**. There are no other intersection points.
1. The `28th` stop on the N line is different than the `28th` stop on the 6 line, for example, so you'll have to differentiate this.

We want to build a program that will take the line and stop at which the user is getting on, and the line and stop at which the user is getting off, and prints the total number of stops for the trip.

### Completion

**Finish at least the first 4 parts.** As always: more is better; healthy living is best. Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

## Part 1 &ndash; Diagram the data (or domain)

**File name:** `mta_data. ...` (the extension is not important)

Before you start coding away, close your laptops and make a diagram of the subway lines with their stops and how they intersect.

If you drew this out, then take a picture and add it to the repo with the file name above. Otherwise, save your working file with the name above.

## Part 2 &ndash; Diagram the problem

**File name:** `mta_problem. ...` (the extension is not important)

Write out &ndash; step by step, in plain English &ndash; how you would find the number of stops between the Times Square stop on the N line and the Astor Place stop on the 6 line. What values do you need, and how will you use them?

If you drew this out, then take a picture and add it to the repo with the file name above. Otherwise, save your working file with the name above.
    
## Part 3 &ndash; Set up data structures

**File name:** `mta.rb`

Re-open your laptops and begin writing your program.

Set up your data structures at the top of your program; the kindly Metropolitan Transportation Authority has gone to the trouble of arranging your data for you:

```ruby
n_line_stops   = ['Times Square', '34th', '28th-n', '23rd-n', 'Union Square', '8th']
l_line_stops   = ['8th Ave', '6th Ave', 'Union Square', '3rd Ave', '1st Ave']
six_line_stops = ['Grand Central', '33rd', '28th-six', '23rd-six', 'Union Square', 'Astor Place']

mta = {
  :n_line   => n_line_stops,
  :l_line   => l_line_stops,
  :six_line => six_line_stops
}
```

## Part 4 &ndash; Write the program for one line

*Assume that the N line is the only subway line.*

Build your program from the ground up, starting with single-line functionality.

- The user should be given a list of all the stops on the N line.
- The user should be able to enter the stop at which that they want to get on.
- The user should be able to enter the stop at which that they want to get off.
- The user should be told the number of stops for their trip.

## Part 5 &ndash; Add a second line

Now move on to two-line functionality (N and L).

- The user should be asked what line they want to get on.
- The user should be given a list of all the stops on that line.
- The user should be able to enter the stop at which that they want to get on.
- The user should be asked what line they want to get off.
- The user should be given a list of all the stops on that line.
- The user should be able to enter the stop at which that they want to get off.
- The user should be told the number of stops for their trip.

## Part 6 &ndash; Add the final line

Now move on to three-line functionality (N, L, and 6).

- Make your program work with all three lines
