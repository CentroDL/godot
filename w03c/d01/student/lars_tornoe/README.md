## Lars Tornoe

Your dev shop has been tasked with recreating the web page of Norwegian designer, [Lars Tornoe](http://larstornoe.com/).The senior dev on your team has provided you with a layout breakdown, and has instructed you to conjure the layout before doing any of the color/text styling.

#### Exercise Objectives

- gain meaningful experience breaking a design down into its component parts
- get additional experience using `display: inline-block` to get block-level elements to sit side by side

===

#### Part 1: Examine the Live Site

Spend a few minutes examining the layout of [the Lars Tornoe webpage](http://larstornoe.com/). 

#### Part 2: Breaking it Down

Spend 10-15 minutes examining [the layout breakdown provided by your colleague](layout_breakdown.png), in which each of the colored rectangles represents a division in the page. __Pay special attention to how the divisions are nested.__ Remember, you have the power to make divs sit side by side using `display: inline-block` and can alter the `width` of those divs to suit your needs.

#### Part 3: A Centered Container

All of the page's content resides in a centered div (the red rectangle in the breakdown image). Thus, make sure you have a centered div before coding anything else.

#### Part 4: The Header

The first element within the centered container div is a header. It's 100% of the width of the centered container, and seems to have two inner columns. The column on the left contains a logo and some accompanying text, and the column on the right contains a list of navigation links. Make sure you have the header properly laid out before moving on.

#### Part 5: Beneath The Header

Below the header is a container (outlined in purple in the layout breakdown) that's 100% of the width of the centered container, and has two inner columns. The width of the column on the left is around 65%, and it contains two `<img>` tags. The width of the column on the right is around 32% and contains *three* image tags. Get these elements laid out as they appear on the Lars Tornoe webpage

__Note:__ don't worry about the text overlaid on the images just yet. That's the bonus.

#### Part 6: Similar, But Different

The next portion of the layout is similar to the portion covered in part 5. Code it up!

#### Part 7: The Final Image and an address

Add the final image and the centered address of Lars Tornoe to the layout.

#### Part 8: Style!

Now that the geography of your layout is in order, apply styling to the links and text, such that it appears as it does on the Lars Tornoe website.

#### Bonus

Notice that there's a text overlay on [each of the product images](layout_breakdown.png). Remember last week when I said one of the few use cases for the `position` property was when you need one element to sit on top of another? Well, this is one of those cases. Read [this article](http://css-tricks.com/absolute-positioning-inside-relative-positioning/) for ideas on how you can overlay the images with text, and then... do it!
