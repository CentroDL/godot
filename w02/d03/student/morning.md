t# Top Box Office

![:image](http://www.lynettelewis.com/wp-content/uploads/2013/05/Critic-Main-600x314.jpg)

> This morning we're going to practice manipulating and iterating through data.

## Step 1

Create a file called `box_office.rb`

Perform each task and assign the outputs to sensibly named variables.

Record your work in `box_office.rb`

Transform the following string of ratings into an array of strings.

```rb
"pg-thirteen,pg,r,pg,pg-thirteen,pg-thirteen,pg-thirteen,r,r,r,r,pg-thirteen,r,pg-thirteen,r,r,r,r,r,r,pg-thirteen,r,pg-thirteen,pg-thirteen,pg,r,r,pg,pg"
```

Convert the following string of movie titles into an Array of movie titles.

```rb
"the hunger games: mockingjay - part 1|penguins of madagascar|horrible bosses 2|big hero 6|interstellar|dumb and dumber to|the theory of everything|gone girl|the pyramid|birdman|nightcrawler|st. vincent|fury|beyond the lights|wild|foxcatcher|the homesman|whiplash|john wick|the equalizer|guardians of the galaxy|the judge|the maze runner|ouija|alexander and the terrible, horrible, no good, very bad day|rosewater|hector and the search for happiness|the book of life|the boxtrolls"
```

Convert the following string of movie scores into an array of strings.
Each string should contain two percentages separated by a comma.

```rb
"65%, 76%*71%, 68%*34%, 60%*89%, 94%*73%, 87%*26%, 49%*81%, 84%*88%, 89%*7%, 39%*94%, 86%*95%, 87%*76%, 82%*78%, 88%*84%, 83%*92%, 80%*86%, 77%*79%, 53%*96%, 96%*85%, 82%*61%, 81%*90%, 94%*47%, 76%*63%, 73%*7%, 29%*62%, 65%*74%, 75%*36%, 67%*82%, 82%*75%, 68%"
```

```rb
# Before
"65%, 76%*71%, 68%"
# After
[ "65%, 76%", "71%, 68%"]
```

## Step 2

Perform each of the following tasks with `.each` and again with `.map`

Transform the array of ratings from above, replace "thirteen" with "13".

```rb
# Before
"pg-thirteen"
# After
"pg-13"
```

Transform the above array of ratings so that each string is all uppercased.

```rb
# Before
"pg-13"
# After
"PG-13"
```

Transform that array of movie titles so that every word in each string is capitalized.

```rb
# Before
"alexander and the terrible, horrible, no good, very bad day"
# After
"Alexander And The Terrible, Horrible, No Good, Very Bad Day"
```

Transform the that array of strings into an array of hashes with a key of title and a value of the title.

```rb
# Before
"The Hunger Games: Mockingjay - Part 1"
# After
{:title => "The Hunger Games: Mockingjay - Part 1"}
```

Convert the above array of scores into an array of hashes where the key is :score and the value is the scores.

```rb
# Before
[ "65%, 76%", "71%, 68%"]
# After
[ {:scores => "65%, 76%"}, {:scores => "71%, 68%"} ]
```

## Step 3

Convert the above arrays of hashes of movie titles and scores into a single array of hashes with `title` and `score` keys.

```rb
# Before
[
    {:scores => "65%, 76%"},
    {:scores => "71%, 68%"}
]
[
    {:title => "The Hunger Games: Mockingjay - Part 1"},
    {:title => "Penguins Of Madagascar" }
]
# After
[
    {
        :title  => "The Hunger Games: Mockingjay - Part 1",
        :scores => "65%, 76%"
    },
    {
        :title  => "Penguins Of Madagascar",
        :scores => "71%, 68%"
    }
]
```

Transform the above array of movie hashes. Change the value of `:scores` from a string into an array of the two strings.

```rb
# Before
{
    :title  => "The Hunger Games: Mockingjay - Part 1",
    :scores => "65%, 76%"
}
# After
{
    :title => "The Hunger Games: Mockingjay - Part 1",
    :scores => ["65%", "76%"]
}
```

Transform the above array of movie hashes. Change the values of `:scores` to be a hash with keys `:critics` and `:audience` set the values to be the first and second elements of the previous score array respectively.

```rb
# Before
{
    :title => "The Hunger Games: Mockingjay - Part 1",
    :scores => ["65%", " 76%"]
}
# After
{
    :title => "The Hunger Games: Mockingjay - Part 1",
    :scores => {
        :critics  => "65%",
        :audience => "76%"
    }
}
```

Transform the above array of movie hashes. Convert the values of `:critics` and `:audience` from strings into floats.

```rb
# Before
{
    :title => "The Hunger Games: Mockingjay - Part 1",
    :scores => {
        :critics  => "65%",
        :audience => "76%"
    }
}
# After
{
    :title => "The Hunger Games: Mockingjay - Part 1",
    :scores => {
        :critics  => 0.65,
        :audience => 0.76
    }
}
```

## Step 4

Pair down the above array to only include movies where the critics' score was above 80%.
How many films is that?

Pair down the above array to only include movies where the audience score was above 80%.
How many films is that?

Select only the movies with single word titles.

What is the average audience score for movies with single word titles?

