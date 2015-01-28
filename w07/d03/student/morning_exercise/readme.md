# Adventures in DOM manipulation

![:image](img/adventures.jpg)

Have you ever used a bookmarklet?  A bookmarklet is a small bit of JavaScript
that can be stored as a URL for a browser bookmark. A user drags the bookmark
link from the page into their browser toolbar where they can execute it later.

Bookmarklets usually append a script tag to a page, which forces the browser to
download and run the script, thus "injecting" more code onto the page.

Here are some examples in the wild:

- http://support.awe.sm/customer/portal/articles/1364142-how-to-install-the-bookmarklet-
- https://share.flipboard.com/
- http://help.getpocket.com/customer/portal/articles/483627-using-the-pocket-bookmarklet
- http://translate.google.com/translate_buttons

## Your challenges

We're going to practice the first part of creating bookmarklets: writing
functions that append tags to the page.

Write your functions inside "js/main.js"

## How to Test

You can test your functions by opening up `index.html` and running your code
from inside the developer console.

### Load JS

Write a function called `loadJS` that creates a "script" element and sets its
"src" attribute to "js/app.js". Append the script element to the document's head.

> js/app.js has some code in it so you should see the page change color when you're
> successful.

### Load CSS

Write a function called `loadCSS` that creates a "link" element and sets its
"href" attribute to "css/style.css" and it's "rel" attribute to "stylesheet". Append
the link element to the document's head.

> css/style.css has some code in it. Does it take affect when you append the element
> to the DOM?

### Load Styles

Write a function called `loadStyle` that creates a "style" element and set its
"innerText" to "body { background: blue; }". Append the style element to the
document's head.

> What is different about appending a "style" element versus the "link" element?

### Colorify

Write a function called `colorify` that uses [`window.prompt`](https://developer.mozilla.org/en-US/docs/Web/API/Window.prompt) to ask the user to enter a
color and then change the background color of the page to that color.

### jQuerify

Write a function called `jQueryify` that creates a "script" element and sets
it's "src" attribute to the following CDN
"https://code.jquery.com/jquery-1.11.2.min.js" Append the script element to the
document's head.

### LoDashify

Write a function called `lodashify` that creates a "script" element and sets
it's "src" attribute to the following CDN
"https://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js" Append the
script element to the document's head.

### Requiring others

Write a function called `adventureTime` that creates a "script" element with the
"src" attribute "js/adventure.js" and append it to the document's head.

> Take a look at the code in `js/adventure.js` What other two libraries will your
> `adventureTime` function need to load in the DOM before it can run?

### Flash Notice

Update jQuerify and LoDashyify to append messages to the DOM that say they've been loaded and use [setTimeout](timeout) to remove the message from the DOM after 5 seconds.

[timeout]: https://developer.mozilla.org/en-US/docs/Web/API/WindowTimers.setTimeout

### Kittenfy

Placekitten is an API that will generate an image of a kitten of an arbitrary size

Try the following link for an example:

```
https://placekitten.com/g/200/300
```

Write a function called `kittenfy` that selects all the "img" elements on the
page and changes their "src" attribute to a placekitten url.

> Can you change the placekitten url to match the height and width of each img?

## Resources and Next Steps

- [Convert your functions code to a Bookmarklet](http://mrcoles.com/bookmarklet/)
