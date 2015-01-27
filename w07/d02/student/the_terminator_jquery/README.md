## The Terminator jQuery

In the 1984 film, The Terminator, a ruthless non-feeling cyborg assassin travels back in time to 1980s Los Angeles to find and terminate Sarah Connor, the woman who will give birth to and raise a son who will someday lead mankind in the War Against the Machines. Trouble is, Sarah Connor is a baaaaddd woman, and there are 4 other Sarah Connors living in the Los Angeles metro area. Additionally, there are also some meddlesome cops (and a handsome future soldier) that the Terminator has to deal with. You've been tasked with modeling this scenario using JavaScript.

#### Exercise Objectives

- experiment with jQuery!

#### Directions

1. Work within the Chrome Developer console. Once you have a working line of code, copy it over into your `scripts/main.js` file.
1. Query the DOM for the h1 and store it in a sensibly named variable.
1. Change the heading's text so that it reads "Inhabitants of Los Angeles (1984)".
1. Query the DOM for any list items with the class of `cop`, and store the elements in a variable called `cops`.
1. Make all the cops' names the `color` of `lightskyblue`.
1. Create a div with the class of `terminator`, and append it to the div with the id of `los-angeles`.
1. Query the DOM for the element with id of `the-one-true-sarah-connor`, and save it in a variable called `theOneTrueSarahConnor`.
1. Give `theOneTrueSarahConnor` the class of `badass`.
1. Query the DOM for all elements that have the class `collateral-damage`, and save the elements in a variable called `poorSouls`.
1. Remove `poorSouls` from the DOM one by one.

#### jQuery Docs

- [`.text()`](http://api.jquery.com/text/)
- [`.html()`](http://api.jquery.com/html/)
- [`.addClass()`](http://api.jquery.com/addclass/)
- [`.removeClass()`](http://api.jquery.com/removeclass/)
- [`.css()`](http://api.jquery.com/css/)
- [`.remove()`](http://api.jquery.com/remove/)
