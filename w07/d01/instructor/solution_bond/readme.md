# James Bonds: License to Code

![:image](http://nerdreactor.com/wp-content/uploads/2013/01/james_bond.jpg)

## Setup

Hello 007.  The following data about James Bond films is stored in a file called
`bondFilms.js`.  You'll use your new [`lo_dash.js`](lo_dash) and
[`moment.js`](moment) libraries to work through Parts 1 through 9. __Be sure to
add them to `index.html`!__

__Append each answer to the DOM in `index.html` as `li` tags under "ul#answers".__

[low_dash]: https://lodash.com/docs
[moment]: http://momentjs.com/

## Completion

**Please finish through Part 9.** As always: more is
better; healthy living is best. Only do the bonus if you have completed every
single part.


```js
var bondFilms = [
  { releasedOn: "5 October 1962",    actor: "Sean Connery",   gross:   "$440,759,072", title: "Dr. No" },
  { releasedOn: "10 October 1963",   actor: "Sean Connery",   gross:   "$576,277,964", title: "From Russia with Love" },
  { releasedOn: "17 September 1964", actor: "Sean Connery",   gross:   "$912,257,512", title: "Goldfinger" },
  { releasedOn: "9 December 1965",   actor: "Sean Connery",   gross: "$1,014,941,117", title: "Thunderball" },
  { releasedOn: "12 June 1967",      actor: "Sean Connery",   gross:   "$756,544,419", title: "You Only Live Twice" },
  { releasedOn: "18 December 1969",  actor: "George Lazenby", gross:   "$505,899,782", title: "On Her Majesty's Secret Service" },
  { releasedOn: "14 December 1971",  actor: "Sean Connery",   gross:   "$648,514,469", title: "Diamonds Are Forever" },
  { releasedOn: "27 June 1973",      actor: "Roger Moore",    gross:   "$825,110,761", title: "Live and Let Die" },
  { releasedOn: "19 December 1974",  actor: "Roger Moore",    gross:   "$448,249,281", title: "The Man with the Golden Gun" },
  { releasedOn: "7 July 1977",       actor: "Roger Moore",    gross:   "$692,713,752", title: "The Spy Who Loved Me" },
  { releasedOn: "26 June 1979",      actor: "Roger Moore",    gross:   "$655,872,400", title: "Moonraker" },
  { releasedOn: "24 June 1981",      actor: "Roger Moore",    gross:   "$486,468,881", title: "For Your Eyes Only" },
  { releasedOn: "6 June 1983",       actor: "Roger Moore",    gross:   "$426,244,352", title: "Octopussy" },
  { releasedOn: "22 May 1985",       actor: "Roger Moore",    gross:   "$321,172,633", title: "A View to a Kill" },
  { releasedOn: "27 June 1987",      actor: "Timothy Dalton", gross:   "$381,088,866", title: "The Living Daylights" },
  { releasedOn: "13 June 1989",      actor: "Timothy Dalton", gross:   "$285,157,191", title: "Licence to Kill" },
  { releasedOn: "13 November 1995",  actor: "Pierce Brosnan", gross:   "$529,548,711", title: "Goldeneye" },
  { releasedOn: "6 December 1997",   actor: "Pierce Brosnan", gross:   "$478,946,402", title: "Tomorrow Never Dies" },
  { releasedOn: "8 November 1999",   actor: "Pierce Brosnan", gross:   "$491,617,153", title: "The World is Not Enough" },
  { releasedOn: "20 November 2002",  actor: "Pierce Brosnan", gross:   "$543,639,638", title: "Die Another Day" },
  { releasedOn: "14 November 2006",  actor: "Daniel Craig",   gross:   "$669,789,482", title: "Casino Royale" },
  { releasedOn: "29 October 2008",   actor: "Daniel Craig",   gross:   "$622,246,378", title: "Quantum of Solace" },
  { releasedOn: "23 October 2012",   actor: "Daniel Craig",   gross: "$1,108,561,008", title: "Skyfall" }
];
```

## Part 1: grossToNumber

Write a method called `grossToNumber` that takes a gross as a string converts it
into a number.

```
grossToNumber("$622,246,378");
// 622246378
```

## Part 2: sumGrosses

Write a method called `sumGrosses` that takes `bondFilms` and returns the sum of
all the grosses as a number.

```
sumGrosses(bondFilms);
```

## Part 3: actorNames

Write a method called `actorNames` that takes `bondFilms` and returns an array
of strings of the names of the all actors who have ever played Bond, but with no
duplicates.

## Part 4: oddBonds

Write a method called `oddBonds` that takes `bondFilms` and returns an array of
only the bondFilm objects with odd-numbered years.

## Part 5: worstGrossingBond

Write a method called `worstGrossingBond` that takes `bondFilms` and returns a
JavaScript object of the bond film with the lowest gross.

## Part 6: highestGrossingBond

Write a method called `highestGrossingBond` that takes `bondFilms` and returns a JavaScript object of the bond film with the highest gross.

## Part 7: moviesPerActor

Write a method called `moviesPerActor` that takes `bondFilms` and returns a JavaScript object where the properties are the actors names and the values are their total number of films.

example: `{ "Daniel Craig": 3, "Timothy Dalton": 2 }`

## Part 8: sortByRelease

Write a method called `sortByRelease` to sort the `bondFilms` array by year of release, with the earliest films first.

## Part 9: titlesOfWordCount

Write a method called `titlesOfWordCount` that takes the `bondFilms` as the first argument and a `numberOfWords` (a number) as the second parameter.  It should return an array of strings of titles with the specified number of words.

```
// example
titlesOfWordCount(bondFilms, 1);
// ["Moonraker", "Goldeneye", "Goldfinger", "Octopussy", "Skyfall", "Thunderball"]
```

## Bonus: sort

Write a method called `sort` that takes the `bondFilms` as the first argument
and a JavaScript object as the second parameter as an "options hash".

The options hash will allow you to specify your sort by "order" (ascending or descending) and "by" (any property of the bondFilm objects)

```
// example usage
sort(bondFilms, {order: "ascending", by: "title"});
```

## Bonuser: Test your James Bond trivia.

Add the following to `index.html`

```
  <h1 class="bond-title"></h1>
  <input type="text" name="answer" placeholder="Your answer...">
  <button class="js-guess">Quiz Me</button>
```

Attach an Event Listener to `button.js-guess`  so that when you click on the
button the textContent of `h1.bond-title` is set to a random Bond Title.

Attach another Event Listener to `input[name="answer"]` and listen for the
["keypress"][keypress] event.


When you type in a Bond actor's name and press enter, if that
name is the correct guess for the Bond Film add the class `correct` otherwise
add the class `incorrect`.

> check the Event object's `keycode` property is '13'. That's the "enter" key

[keypress]: https://developer.mozilla.org/en-US/docs/Web/Events/keypress
