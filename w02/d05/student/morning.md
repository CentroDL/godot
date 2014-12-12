# Good Morrow!

![:image](https://i0.wp.com/www.filmscouts.com/zgifclip/cannes97/hamlet.gif)

> Is it Nobler in the mind to suffer rewriting each array as a hash or to take Arms and convert them programmatically? 

# Part 1

## First

Do your work inside of `hamlet.rb`

Use `.each` to print out "O! the venerable [Actor] starred as Hamlet in [Year]"

```rb
hamlets = [
  "Laurence Olivier, 1948",
  "Grigori Kozintsev, 1964",
  "Tony Richardson, 1969",
  "Franco Zeffirelli, 1990",
  "Kenneth Branagh, 1996",
  "Michael Almereyda, 2000"
]
```

## Second

Programatically convert the `hamlets` array into an array of arrays where the first element, name, is a string, and the second element, year, is an integer.

## Third

Programatically convert the `hamlets` array of arrays into an array of hashes where the keys are `:name` and `:year`

## Fourth

Programatically select all the Hamlets from the 1960's and assign them to an array called `swingin_hamlets`

## Fifth

Programatically select all the Hamlets from the 1960's and assign them to an array called `swingin_hamlets`

Programatically select all the Hamlets from the 2000's and assign them to an array called `future_hamlets`

# Part 2

## One 
Convert the following `quotes` array into an array of hashes.
Each hash should have the keys `:quote`, `:play`, `:act` and `:scene`

Example expected transformation:

```rb
quotes = [
    ["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."]
]
#=>
quotes = {
    :quote => "To be, or not to be: that is the question",
    :play  => "Hamlet",
    :act   => "III",
    :scene => "I"
}
```

```rb
quotes_array = [
  ["To be, or not to be: that is the question", "Hamlet - (Act III, Scene I)."],
  ["A little more than kin, and less than kind", "Hamlet - (Act I, Scene II)."],
  ["And it must follow, as the night the day, thou canst not then be false to any man", "Hamlet - (Act I, Scene III)."This is the very ecstasy of love". - (Act II, Scene I)."],
  ["Brevity is the soul of wit", "Hamlet - (Act II, Scene II)."],
  ["Do you think I am easier to be played on than a pipe?", "Hamlet - (Act III, Scene II)."],
  ["Doubt that the sun doth move, doubt truth to be a liar, but never doubt I love", "Hamlet - (Act II, Scene II)."],
  ["I will speak daggers to her, but use none", "Hamlet - (Act III, Scene II)."],
  ["In my mind's eye", "Hamlet - (Act I, Scene II)."],
  ["Neither a borrower nor a lender be; For loan oft loses both itself and friend, and borrowing dulls the edge of husbandry", "Hamlet - (Act I, Scene III)."],
  ["Rich gifts wax poor when givers prove unkind", "Hamlet - (Act III, Scene I)."],
  ["That it should come to this!", "Hamlet - (Act I, Scene II)."],
  ["The lady doth protest too much, methinks", "Hamlet - (Act III, Scene II)."],
  ["The plays the thing wherein I'll catch the conscience of the king", "Hamlet - (Act II, Scene II)."],
  ["There is nothing either good or bad, but thinking makes it so", "Hamlet - (Act II, Scene II)."],
  ["This above all: to thine own self be true", "Hamlet - (Act I, Scene III)."],
  ["Though this be madness, yet there is method int.", "Hamlet - (Act II, Scene II)."],
  ["What a piece of work is man! how noble in reason! how infinite in faculty! in form and moving how express and admirable! in action how like an angel! in apprehension how like a god! the beauty of the world, the paragon of animals! ", "Hamlet - (Act II, Scene II)."],
  ["When sorrows come, they come not single spies, but in battalions", "Hamlet - (Act IV, Scene V)."]
]
```

## Two

With the new array of quote hashes from part four, print to Standard Out each hash in the format

```bash
$ "To be, or not to be: that is the question"
$ "Hamlet - (Act III, Scene I)."
```
