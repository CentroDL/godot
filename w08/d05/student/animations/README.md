# Animations

## Prelude

Read about [Animate.css](http://daneden.github.io/animate.css/) and attempt
to implement a few of the simple animations on the contents of the page.

- What are the general rules for making these work?
- How would you test them?
- What technology are they?

## Part 1 - Animations

1. Add the `main.css` file to your list of linked stylesheets.
1. Implement a `fadeIn` effect on the `<h1>` tag when the page loads.
1. Implement a `fadeInRight` effect on the `<section>` "table" when the page
   loads.
1. Add `bounceInLeft` animations to the `<li>` tags on the page.
1. Ensure that the `fadeIn` takes 1.5 seconds, the `fadeInRight` takes 2
   seconds, and `bounceInLeft`s take only 0.5 seconds.
1. Use the class `hide`, jQuery, and `setTimeout` to trigger the animations so
   that they happen one after the other, in sequence.
1. Use the class `hide`, jQuery and callbacks to trigger the cascading effects.

## Part 2 - Positioning

1. Add these elements to the page's `<section>` element, with `fadeIn` effects:
   ```html
   <div class="card outline west" >West</div>
   <div class="card outline north">North</div>
   <div class="card outline east" >East</div>
   <div class="card outline south">South</div>
   <div id="deck" class="card deck">Deck</div>
   ```

2. Add the `cards.css` file to your list of linked stylesheets.
3. Distribute the cards using absolute positioning so that:
  - the deck is `216px` from the top and in the middle of the table
  - the card outlines (West, North, East, and South) are aligned
    equally across the table from left to right.
4. Have these elements ("cards") `fadeIn` after the `<li>`s, and then
   have the deck `pulse`.

## Part 3 - JavaScript

1. Add an array to your global scope that represents a deck of cards, eg:
   ```javascript
   var cards = [
     "dA","dK","dQ","dJ","d10","d09","d08","d07","d06","d05","d04","d03","d02",
     "cA", /* ... */
     "hA", /* ... */
     "sA"  /* ... */
   ];
   ```

2. Write a "click" event handler and attach it to the deck that:
  - the first time it's called, shuffles the deck,
  - every subsequent time, pops one of the cards off of the deck
3. Add an animation to make the deck `shake` when you shuffle it.
4. When you pop a card off of the deck, create a new card element:
   ```html
   <div class="card h09">h09</div> // for example, when you pop "h09"
   ```

5. Finally, when you pop a card and create an element, add that element to the
   end (`append`) of the table section, and position it directly over the deck.
   Use an animation `flipInY` for when it appears.

## Part 4 - Animation

1. Whenever a new card is created, give it a one time event-handler that
   will move it to one of the 4 positions on the board (West, North, East or
   South) on click.
1. Use jQuery's `.animate()` to animate the cards' click events (above).
1. Make the cards' click events (above) distribute them, starting at
   West, to the positions in order.

## Part 5 - Throttle / Debounce

1. Read and include the "jQuery Plugin" found at
   [jquery-throttle-debounce](https://github.com/cowboy/jquery-throttle-debounce), and described at
   [Cowboy's blog post about his gorgeous code](http://benalman.com/projects/jquery-throttle-debounce-plugin).
1. Use this plugin's `jQuery.throttle()` method to make sure that you can only call the ***deck's***
   "click" event handler once every second (the length of time of the *card-flip* animation) to create
   a new card element.