# The Pair Programming Bot

![Paired-programming bots](img/wall-e-eve.jpg)

You are going to recreate the 
**[Pair Programming Bot Website](http://pairprogrammingbot.herokuapp.com/)**
from scratch using Sinatra.

## Setup

Create a Sinatra application in this folder. There is not any deep logic, just a
series of links to implement, so you do not need to create any extra files, 
classes, objects, etc.: just a Sinatra app!

Please complete each part below.

## Part 1 - Planning

Draw a flow chart (or decision tree) for the app's behavior before you code a 
word. Check out 
[this flowchart example](https://c1.staticflickr.com/9/8160/7214525854_733237dd83_z.jpg)
for inspiration. Name each action and represent it with a *route*.

## Part 2 - Server & Routes

Get your server up and running! Then implement each route, checking to make sure
that the language is correct for each page.

## Part 3 - HTML

Rewrite your routes' output to use correctly formatted HTML. Each page will 
either have a **YES**, **NO** option or a **DONE** link or button, and each 
option will link to the appropriate page (**DONE** returns to the beginning). 

Structure the page correctly with `<div>`, `<a>`, `<span>`, `<p>`, or `<button>`
tags (careful with that `<button>`: you still need an `<a>` to make a link!) as 
necessary, adding classes where appropriate (**note:** divs should almost always
have a class).

To simplify your writing, make sure to use a common layout template (ERB)!

## Part 4 - CSS

Center and space the elements. Give the page a background color, and make the 
buttons colorful. Check the font sizes, margins and paddings as well.

![An example](img/pair-example.png)

## Bonus - Dynamism!

Attempt to rewrite your app to use a single dynamic route handler and no more 
than two ERB templates. How would you do this? What would you rewrite and 
interpolate in your ERB? What data structures would your app use to hold the 
content?
