## Puppy Parallax

As much as it hurts me to play into internet fads, you're probably going to go out into the world and hear people talk about 'parallax'. So what is parallax? You're about to find out.

#### Directions

1. Take 5-10 minutes to read about parallax scrolling at [wikipedia](http://en.wikipedia.org/wiki/Parallax_scrolling)
1. Check out the [GitHub 404](https://github.com/404) page for an example of mouseover parallax. (mouseover the GitHub Octocat.)
1. Great, now within your [`parallax.js`](parallax.js), add a parallax effect to the puppies on the page by changing the 'top' property of the background div css by a factor of how far the user has scrolled. HINT: we are going to have to use `$(window).scrollTop()`.
1. Add more parallax effects by changing the `top`, `left`, `right` and other CSS properties the images css by a different factor depending on how far the user has scrolled.

#### Bonus

* Play with changing the CSS transform property. Check out `rotate`, `transform`, and `scale`.
* Tinker with the puppies' `z-index` to change what appears in front of what.

#### Resources

* [.scrollTop()](https://api.jquery.com/scrollTop/)
* [Positioning](https://developer.mozilla.org/en-US/docs/Web/CSS/position)
* [Z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)
