## Fellowship of the Ring DOM Manipulation

Create a function for each of the following steps to practice DOM Manipulation and JavaScript. These should each be called in order after the window has loaded.

#### Exercise Objectives
- practice querying and manipulating the DOM with JavaScript
- gain experience the DOM with JavaScript
- implement event listeners to make your pages more interactive
- practice self-directed learning with a new language

## 1

```
var lands = ['The Shire', 'Rivendell', 'Mordor'];

function makeMiddleEarth() {
    // create a section tag with an id of middle-earth
    // add each land as an article tag
    // inside each article tag include an h1 with the name of the land
    // append middle-earth to your document body
}

makeMiddleEarth();
```

## 2
```
function makeHobbits() {
  // display an unordered list of hobbits in the shire (which is the second article tag on the page)
  // give each hobbit a class of hobbit
}
```

## 3
```
function keepItSecretKeepItSafe() {
  // create a div with an id of 'the-ring'
  // give the div a class of 'magic-imbued-jewelry'
  // add an event listener so that when a user clicks on the ring, the nazgulScreech function (provided) is invoked
  // add the ring as a child of Frodo
}
```

## 4

```
function makeBuddies() {
  // create an aside tag
  // attach an unordered list of the 'buddies' in the aside
  // insert your aside as a child element of rivendell
}
```

## 5

```
function beautifulStranger() {
  // change the 'Strider' textnode to 'Aragorn'
}
```

## 6
```
function leaveTheShire() {
  // assemble the hobbits and move them to Rivendell
}
```

## 7

```
function forgeTheFellowShip() {
  // create a new div called 'the-fellowship' within rivendell
  // add each hobbit and buddy one at a time to 'the-fellowship'
  // after each character is added make an alert that they have joined your party
}
```

## 8

```
function theBalrog() {
  // change the 'Gandalf' textNode to 'Gandalf the White'
  // apply style to the element
  // make the background 'white', add a grey border
}
```

## 9
```
function hornOfGondor() {
  // pop up an alert that the horn of gondor has been blown
  // Boromir's been killed by the Uruk-hai!
  // put a linethrough on boromir's name
  // Remove Boromir from the Fellowship
}
```

## 10
```
function itsDangerousToGoAlone(){
  // take Frodo and Sam out of the fellowship and move them to Mordor
  // add a div with an id of 'mount-doom' to Mordor
}
```

## 11
```
function weWantsIt() {
  // Create a div with an id of 'gollum' and add it to Mordor
  // Remove the ring from Frodo and give it to Gollum
  // Move Gollum into Mount Doom
}
```

## 12
```
function thereAndBackAgain() {
  // remove Gollum and the Ring from the document
  // remove all the baddies from the document
  // Move all the hobbits back to the shire
}
```

#### Bonus

- Within the click event listener for clicking '#the-ring", so that when it's clicked, it not only calls nazgulScreech, but also causes frodo's opacity to go down to 0 for awhile, only to fade back in.
- If the ring is clicked 3 times, the entire body element should disappear, to be replaced with the text "The Ring has been returned to Sauron and the world is over."


### Resources

- [dom reference](https://developer.mozilla.org/en-US/docs/DOM/DOM_Reference)
- [dom cheatsheet](http://christianheilmann.com/stuff/JavaScript-DOM-Cheatsheet.pdf)
