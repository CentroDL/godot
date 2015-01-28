## The Fart Store

These sandboxes we've been using are cool, but market demands have changed and GA has decided that we need a fart store, so we're going to be doing some remodeling with jQuery in our `scripts/main.js` file.

#### Exercise Objectives

- get practice manipulating the DOM with jQuery

#### Directions

1. Change the h1 so that it has the class 'classy', and its text reads "The Fart Store"
1. Change the h1's font size to 8ems.
1. Add the "backdrop" class to the `body` element.
1. Target the first paragraph tag on the DOM, and change its text so that it reads '- Established 2014 -'. Then give it the class 'sub-head'
1. Target the second paragraph tag on the DOM, and give it the inner html "Everything You Need to Start `<span>`Farting`</span>` Around"
1. Remove the h2 from the dom
1. Remove the entire unordered list of features from the DOM
1. Give all of the paragraphs tags the 'classy' class.
1. Create a div with class of 'product-container'. Append 8 new child divs with the class of 'jar'.
1. Add the 'product-container' div __after__ the second `<p>` tag.
  - Look into the jquery's `.after()` method
1. Create a button element with text "Sample The Product", and an id of "sample-button". Append it to the DOM's `<body>` element.

#### Bonus
- Add an event listener to your new button using jQuery's `.on()` method. When the button is clicked, a div of the "product" class should fade into view at the bottom of the dom. After 5 seconds, this div should disappear. 

