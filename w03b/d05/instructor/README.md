## CSS Day 5: Margin

Welcome to Day 5 of your Holiday Work. The work below focuses on the `margin` property: why you should use it in place of `position`, and how it works to help you center your divs. The work below relies on you having done the previous days' work, so do days 1-4 before tackling the readings/exercises below.

#### Part 1: Uncovering The Madness Of The Position Property

There are two primary ways to alter an element's placement within a layout: 

1. by applying `margin` to an element (i.e. pushing it away from other elements)
1. by setting an element's `position` attribute, and afterwards applying a value to one (or several) of the following attributes: `top`, `left`, `bottom`, or `right`

Option 1 is fairly intuitive. You apply margin to an element, it shifts in the given direction, and all other elements shift to accomodate the move. Option 2? Well, option 2 has a number of quirks, and while it does the trick for simple layouts (like Hello Philco), it can quickly get out of hand when creating a layout requiring a high number of elements. 

__Exercise:__ to illustrate one of the more baffling and problematic quirks of positioning, [spend 10-15 minutes critically examining this JS Fiddle](http://jsfiddle.net/vanderhoop/vog6qx3g/).

#### Part 2: A Golden Rule For CSS Layout

As your layouts gain elements and complexity, the problem introduced in the JS Fiddle from Part 1 can lead to a complete eradication of your sanity as you change one attribute to another trying to wrangle your elements into the arrangement you want. Thankfully, there's a golden rule in CSS layout that, if you follow, will keep you from running into too many problems. 

> Only shift elements with a `position` + `top`/`right`/`bottom`/`right` combination when you need elements to overlap or you need an element to stay fixed in a certain region of the viewport at all times. For almost all other cases that call for manipulating an element's placement, use `margin`.

__Note:__ this rule assumes you know how to use `display: inline-block` to line block elements up side by side. If you don't know about `display: inline-block`, return to the work from day 3.

#### Part 3: Horizontally Centering Divs

You'll often find yourself needing to horizontally center a div. Unlike text content, which is easily centered via `text-align: center;`, div's don't have a one-line solution for centering. So how do you center a div? 

__Step 1:__ give the div a `width` that is less than the width of its parent element. Why? Because by default, divs are as wide as their parent element, and are thus, in a sense, already centered. So set the width of the element you're trying to center to any value less than the width of the parent element.

```css
.class-of-some-div-im-targeting {
  width: 95%;
}
```

__Step 2:__ give the element you're trying to center _automatically_ calculated left and right margins. Here's the code for doing so.

```css
.class-of-some-div-im-targeting {
  width: 95%;
  margin-left: auto;
  margin-right: auto;
}
```

In the code above, `auto` tells the browser to automatically determine the left and right margins, which it does by setting them to an identical value. The equality of these two margins ensures that the object will be centered no matter what the width of the containing element is.

__Note:__ You're often see CSSers use `margin: 0 auto;`, which is just shorthand for the code above. Use whatever you're more comfortable with.

__Additional Note:__ Automatic margins don't work for centering elements vertically. Sorry.

#### Part 3: Layout Exercise

[Use everything you've learned over the last 5 days.](brook_and_lyn)

