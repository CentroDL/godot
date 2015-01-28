## The Walker
In the `index.html` file lives a friendly captive .gif known only as *The Walker*. At present, The Walker only knows how to walk in place, but he has hired us to imbue him with more dynamic behavior. His specifications are below.

#### Exercise Objective(s)

- get practice using `setInterval` to repeatedly execute JavaScript code
- get additional practice manipulating the DOM with raw JavaScript

#### Directions

1. Use JavaScript to place The Walker on the far right side of the screen.
1. Use `setInterval` to make The Walker __walk left__ across the page.
1. Cool, once #2 is complete, have The Walker turn around once he comes close to the left border, as if he's forgotten his keys. He should then __walk right__ until he's off the screen.
  - To flip the gif, I've provided you with a pre-written style declaration in [`stylesheets/style.css`](./stylesheets/style.css), so check it out.

#### Additional Sillyness
* When The Walker crosses the threshold of *either* border, he would like to turn around, as if happily captive in an invisible prison cell.
* When clicked, The Walker would like to change direction.
