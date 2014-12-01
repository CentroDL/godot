# Intro to Ruby Lab

Hello there! This is your first extended lab, also known as *homework*. It is homework in that you have to "turn it in" to us, and you'll usually have to work on it after class is over. It is not homework in that we'll work on it in class and in groups, not necessarily at home. :)

## Instructions

### Setup

If you haven't already, do the following:

- From the command line create a folder inside `~/dev/wdi` called `exercises`. Work inside that folder.
- For each part below, create a *new* ruby file ***from the command line!***.
- Your file names should be `snake_cased` and end in `.rb`

### Lab Structure

Lab (homework) prompts will always be slit in to **parts.**

***There will almost always be more work than you could ever complete in a given night!*** We write them so that they are in a way, overwhelming. That is part of the course! You need to always be pushing and challenging yourself, and also failing. The labs are written so you can return to them and continue to work throughout (and after) the course.

Follow the directions for each part, starting at the first and going down.

### Completion

**Finish at least 3 parts.** Do as many as you can, but don't work until you are exhausted -- this is a marathon, not a sprint.

Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

---

## Part 1: Converters

### Pounds to Kilograms

**File name:** `pounds_to_kilos.rb`

1. Read in a weight from Standard Input (in pounds).
1. Print to Standard Output the weight converted to kilograms, only to the second decimal place.

Example:

```
$ ruby pounds_to_kilos.rb
$ 10
4.54
```

### Kilograms to Pounds

**File name:** `kilos_to_pounds.rb`

1. Read in a weight from Standard Input (in kilos)
1. Print to Standard Output the weight converted to pounds, only to the second decimal place.

Example:

```
$ ruby kilos_to_pounds.rb
$ 10
22.05
```

### Kilometers to Miles

**File name:** `kilometers_to_miles.rb`

Convert from kilometers to miles, as above.

Example:

```
$ ruby kilometers_to_miles.rb
$ 10
6.21
```

### Miles to Kilometers

**File name:** `miles_to_kilometers.rb`

Convert from miles to kilometers, as above.

Example:

```
$ ruby miles_to_kilometers.rb
$ 10
16.09
```

### Feet to Inches

**File name:** `feet_to_inches.rb`

Convert from feet to inches, as above.

Example:

```
$ ruby feet_to_inches.rb
$ 10
120
```

### Inches to Feet

**File name:** `inches_to_feet.rb`

Convert from inches to feet: ***but return the answer as feet and inches!***

Example:

```
$ ruby inches_to_feet.rb
$ 100
8' 4"
```

> Tired of making all these files? Too bad! We have to make so many files and folders for this class it'll make your heads spin. We need to make working in the command line second nature ASAP!

## Part 2: Calculators

### Tip Calculator

**File name:** `tip_calculator.rb`

Write a program that:

1. Prints to Standard Output to ask how much a meal cost (in dollars).
1. Reads from Standard Input the total price of the meal.
1. Prints to Standard Output to ask how much to tip (between 0 and 100 percent).
1. Reads from Standard Input the size of the tip.
1. Prints to Standard Output the amount of the tip (in dollars).

Example:

```
$ ruby tip_calculator.rb
How much did your meal cost?
$ 180.00
How much do you want to tip (%)?
$ 18
You should tip $27.00
```

> PJ is arguing with his fiancee over how much an appropriate service charge is for catering a wedding. Do you believe that tip jars for open bars are tacky or useful?

### Body Mass Index (BMI)

**File name:** `bmi_calculator.rb`

Write a program that:

1. Prints to Standard Output to ask what your weight is in pounds.
1. Reads from Standard Input your weight in pounds.
1. Prints to Standard Output to ask what your height is in inches.
1. Reads from Standard Input your height in inches.
1. Runs the height and weight information through the BMI algorithm:
  - Step 1: Multiply your weight in pounds by 703.
  - Step 2: Multiply your height in inches by itself (ie, *square* it).
  - Step 3: Divide the figure from Step 1 by the figure in Step 2.
1. Prints to Standard Output your BMI (rounded to the nearest integer)!

Example:

```
ruby bmi_calculator.rb
What is your weight in pounds?
215
What is your height in inches?
76
You have a BMI of 26.
```

> Traivs and Phil are having a competition to reduce their BMI over the holidays. What are your plans to stay healthy in class?

## Part 3: Killer Caffeine

**File name:** `caffeine.rb`

Write a program to calculate the following math problem. It should take weight in pounds as input.

> It's estimated that 6 grams per hundred pounds of body weight can cause death! Given an 8oz cup of coffee has 95mg of caffeine, calculate how many cups it takes to kill you.

## Part 4: Old Modems

**File name:** `old_modems.rb`

Write a program to calculate the following math problem. It should take a file size (in megabytes or gigabytes) and a bandwidth (in kilobits) as input.

> How long would it take to download a 25GB (25000MB) ripped copy of the Blade Runner laser disc over a $200 56Kb/s (56,000 bits per second) modem from 1995?
> Note: a gigabyte (GB) is 1,073,741,824 bytes. A gigabyte is 1000 megabytes (MB). A byte is 8 bits.

## Part 5: *A long long long time...*

**File name:** `road_music.rb`

Write a program to calculate the following math problem. It should take an album length in 

> The total running time of the Beatles White Album is 1 hour 33 minutes 35 seconds.
> It's 3,187.1 miles from Portland, Maine to Portland Oregon via I-80 E and I-90 E.
> If you drove from Portland to Portland at an average rate of 55 miles per hour, how many times could you listen to the White Album in full?

## Part 6: How much would it cost to drive around the world at the equator?
Assuming gas costs $2.512 and you drive at a steady 55 mph.

## Part 7: How long would it take to drive from the Earth to the Sun?
Assuming gas costs $2.512 and you drive at a steady 55 mph.

## Part 8: We can't be late
If you left today and wanted to reach the Sun by March 10, 2015, how fast would you have to drive?

## Part 9: Bowie can you hear me?

Radio signals are electromagnetic waves. The speed of electromagnetic waves in a vacuum, is approximately 300,000 km/s

Planet  | Distance from Sun in AU*
:--     | :--
Mercury | 0.39
Venus   | 0.72
Earth   | 1.0
Mars    | 1.5
Jupiter | 5.2
Saturn  | 9.5
Uranus  | 19.2
Neptune | 30.1
Pluto   | 39.5

*An AU is defined as 149,597,870,700 meters*

## Part 10: Calculate how long, in minutes and seconds, it takes to receive a radio signal from Mars.

## Part 11: Vacation to Pluto
Your parents are vacationing on Pluto. They want to wish you a Happy Years right as the ball drops at Midnight. When should they send their message?

## Bonus

Check the input for all of the above programs, and print to Standard Error helpful information about the bad input (like writing `pj` when it's expecting pounds), and then exit the program without Ruby breaking and giving an error message.
