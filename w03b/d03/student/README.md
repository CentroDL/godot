## CSS Day 3: The display Property

Welcome to Day 3 of your Holiday Work. The work below focuses on manipulating the `display` property to align elements in a row, and assumes you know how to use the various CSS selector patterns, as well the CSS `position` property. Please make sure you have done the selector work from Day 1 and the position work from Day 2 before proceeding.

#### Part 1: Understanding the Difference Between Inline Elements and Block Elements

There are two default `display` values of HTML elements:

- __block:__ a block element takes up the entire width of its container, and a line break is added before and after the element. Some common block elements include paragraphs (`<p>`), headings (`<h1>`, `<h2>`, `<h3>` and so on), and divisions (`<div>`)
  - __Exercise:__ [Spend 5-10 minutes critically examining this JS Fiddle on block elements](http://jsfiddle.net/vanderhoop/mb3xz0me/).
- __Inline:__ inline elements take up only only as much width as their content requires, and do not recieve newlines before or after. Some common inline elements include spans (`<span>`), anchors (`<a>`), and text-related elements (`<strong>`/`<em>`)
  - __Exercise:__ [Spend 5-10 minutes critically examining this JS Fiddle on inline elements](http://jsfiddle.net/vanderhoop/epe80z15/1/).

#### Part 2: A Short History Lesson and a Reading Assignment

For many years, web developers resorted to the `float` property to align block elements in a row. There are many problems associated with this approach (the biggest being it requires an unintuitive and ugly hack), none of which we'll be touching on. 

Remember that one of the chief advantages of inline elements is that they can sit side by side. Unfortunately, changing a block element's `display` property to `inline` took away some of the properties developers most needed from typically `block` elements. So when CSS 2.1 was released, the Web Wide Web Consortium added another possible display value: `inline-block`.

[Read this article on `display: inline-block`](http://designshack.net/articles/css/whats-the-deal-with-display-inline-block/)

#### Part 3: A Short Layout Exercise

Complete [the following exercise](display_sandbox), following the directions explicitly.

#### Part 4: Using Positioning to Create a Simple Layout

Recreate [the layout of Travis Vander Hoop's homepage](your_friend_travis), combining your knowledge of CSS positioning and `display: inline-block`




