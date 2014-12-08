## The Tragedie of ShylockBot: ChatBot and Accountant

![shylock](http://media.tumblr.com/1b092693caa96686ba78e305f1519b81/tumblr_inline_mowx2xdAOJ1qz4rgp.jpg)

## Instructions

### Setup

1. Do the work in your student folder for today (`~/dev/wdi/godot/w01/d05/student`).
1. Save your changes using `git` often! At the very least, use `git add .` and `git commit -m "..."` after you finish each part. This means that whenever you submit your homework, you will send us your most updated work!

### The Problem

It's hard to keep track of our debtors.  The goal is to create a ChatBot lending program called ShylockBot.

### Completion

**Finish at least Act 3.** As always: more is better; healthy living is best. Only do the bonus if you have completed every single part. Do not expect to get the bonus finished EVER.

## Prologue: The User Interface

* When you run your script users should be presented with a prompt, `>>`, so that they know that input is expected
* all of Shylock's actions should be sandwiched between double colons `::`

__Examples below__

```bash
>> user input
:: ShylockBots emotions ::
Return Value
```


ShylockBot doesn't respond to unknown commands

```
>> lkjlkj
:: ShylockBot looks confused ::
```

## Act 1

ShylockBot starts off with 10,000 ducats.

```
>> purse
::ShylockBot pulls out his purse::
10000 ducats
```

## Act 2

ShylockBot can lend money

```
>> loan Antonio 50 ducats
::ShylockBot gives Antonio 50 ducats::
- 50

>> loan Bassanio 25 ducats
::ShylockBot gives Bassanio 25 ducats::
- 25

>> purse
::ShylockBot pulls out his purse::
9925 ducats
```

## Act 3

ShylockBot keeps track of his loans

```
>> ledger
::ShylockBot pulls out his ledger::
Antonio owes me 50 ducats
Bassanio owes me 25 ducats
```

## Act 4

ShylockBot can collect interest from his accounts and set the interest rate

```
>> collect interest
::ShylockBot collects interest at 35%::
Antonio now owes me 67.5 ducats
Bassanio now owes me 33.75 ducats
```

```
>> set interest at 15%
::Shylock adjusts his interest rate from 35% to 15%::

>> collect interest
::ShylockBot collects interest at 15%::
Antonio now owes me 77.63 ducats
Bassanio now owes me 38.81 ducats
```

## Act 5

ShylockBot can collect debts

```
>> collect 50 ducats from Antonio
::Shylock opens his purse::
+ 50

>> ledger
::ShylockBot pulls out his ledger::
Antonio owes me 27.63 ducats
Bassanio now owes me 38.81 ducats

```

## Act 6

ShylockBot gets colourful. Loaned amounts should display in <span style="color:red">*red*</span> and collected debts should display in <span style="color:green">*green*</span>.

```
>> loan Bassanio 25 ducats
::ShylockBot gives Bassanio 25 ducats::
- 25 # red

>> collect 50 ducats from Antonio
::Shylock opens his purse::
+ 50 # green
```

## Act 7

ShylockBot tracks all interactions

```
>> history
::Shylock clears his throat::
Date: 12/4/2014
Amount: -50
Debtor: Antonio
Balance: 9950

Date: 12/4/2014
Amount: -25
Debtor: Bassanio
Balance: 9925

Date: 12/5/2014
Amount: 50
Debtor: Antonio
Balance: 9975
```

# FIN
