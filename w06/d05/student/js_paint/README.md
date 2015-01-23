## JS Paint

You've been tasked with building a painting program for the browser. Completion is to get through part 3.

#### Exercise Objectives

- gain experience using JavaScript event listeners to add interactivity to the page

#### Part 1: Dynamically Creating The Canvas

Use a loop (while or for, your choice) to append 805 divs with the class of `tile` to the `canvas` div.

#### Part 2: A Sort of Paint Cursor!

1. Add an event listener to each tile such that when the user uses mouse down over the tile, the tile gets the additional class of "green".
1. Add another event listener to each tile, such that when the user mouses *out* of a tile, the class of "green" is removed.

__Note:__ Rather than loop through the tiles each time, why not add these event listeners in the loop from step 1? Just a thought :)

#### Part 3: Paint Trails!

1. Add an event listener on the "canvas", such that when the user mouses down, you set `mouseDepressed` (already scoped in the global namespace) to `true`;
1. Add another event listener to the canvas, such that when the user mouses up, the `mouseDepressed` gets assigned to `false`.
1. Awesome. Now head back to the event listener you added for mouseouts (part 2). Only remove the class green if `mouseDepressed` is false. 

#### Part 4: Reset 

1. Add an event listener to the reset div such that when it's clicked, the canvas is cleared of any green.

#### Part 5: Build up the Color Palette

```js
var colors = ["red", "goldenrod", "blue"];
```
1. Bring the `colors` array into your `main.js` file.
2. Loop through the colors array, creating a div for each one, giving each two classes: `droplet` & `<THE COLOR>`. Append these divs to the palette div.

#### Part 6: Making the Color Palette Useful

Use your knowledge of event listeners so that the user can select what color they want to use by clicking the desired color on the palette.
