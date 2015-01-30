# WDI Week 07 Assessment

![:image](checkup_07.jpg)

| Category                    | Score |
|:----------------------------|:------|
| Vanilla JavaScript          | __/6 |
| jQuery                      | __/3 |
| Timers                      | __/4 |
| Event Listeners             | __/2 |
| Preventing Default Behavior | __/1 |

Congratulations on finishing week 7 of WDI!

At the end of certain weeks we'll assess your understanding of the week's
material with a series of short questions. This gives us a dataset to talk
about during one-on-one meetings and code reviews.

You'll be answering these questions by hand.

## Vanilla JavaScript

Given the following data structure:

```javascript
var muffins = [
  "Raspberry Banana Bran",
  "Banana Chocolate Chip",
  "Pumpkin Oat"
];
```

Add the string `"Bluberry Apple Bran"` to the end of the `muffins` array.

```
>>
```

Use dot notation to access the string "Burts Bees" from the data structure below.

```
var myFriendMarie = { preferredLipBalm: "Burts Bees", age: 29 };

>>
```

Awesome, now give `myFriendMarie` a `name` of `"Marie Cassel"`.

```
>>
```

Use dot notation to access the string "Purina" from the data structure below.

```
var myCat = {
  sex: "male",
  name: "Dunbar",
  currentFood: {
    brand: "Purina",
    purchased: "01/21/2015"
  }
};

>>
```

Define a function that takes three inputs and returns the product of those 3 inputs. Assign this function to a variable called `calculateVolume`

```
>>
>>
>>
```

Write a for loop to iterate through the `catNames` array, logging each item to the console.

```
var catNames = ['Mr. Biggles', 'Mr. Nix', 'Missus Jeebus'];

>>
>>
>>
>>
>>
```

## jQuery


```html
<header>
  <img src="https://i1.sndcdn.com/avatars-000002990478">
  <p>Welcome to Jamrock</p>
  <p class="niconne">Home of the Jams</p>
</header>
```

Given the HTML above, use jQuery to query the DOM and turn the image tag into a jQuery object. Store it in a variable called `$mrStereoImage`.

```
>>
```

Given the HTML above, use jQuery to change the first paragraph tag's text to `"Welcome to Spacejam"`.

```
>>
```

Great, now use jQuery to create a new paragraph tag. Give the paragraph the class of `"emphasized"` and the text `"Established 1996"`. Append it to the header tag.

```
>>
>>
>>
>>
>>
```

## Timers

Write a JavaScript timer that logs `"Sorry I'm late, everybody!"` to the console after 5 seconds have elapsed. Assign the return value of the timer to a variable called `timerID`.

```
>>
>>
>>
>>
```

Write a JavaScript timer that appends a paragraph tag with the text `"Still Running"` to the page's `body` element *every 2 seconds*. Assign the return value of the timer to a variable called `timerTwoID`.

```
>>
>>
>>
>>
```

Now clear the first timer.

```
>>
```

Now clear the second timer.

```
>>
```

## Event Listeners

```html
<body>
  <button>Click Me!</button>
  <div id="alerts-container">

  </div>
  <div id="trackpad">

  </div>
</body>
```

Given the html above, use jQuery to add an event listener to the button, such that whenever it is clicked, a paragraph tag that says "The button was clicked" gets appended to the div element with id of "alerts-container".

```
>>
>>
>>
>>
>>
```


Now use jQuery to add an event listener to the trackpad div, such that whenever the "mousemove" event fires over that element, a paragraph tag that says "The mouse is moving over the trackpad" is appended to the div element with id of "alerts-container".


```
>>
>>
>>
>>
>>
```

## Preventing Default Behavior

```html
<form action="/nuclear_launch" method="post">
  <input type="text" name="coordinates">
  <input type="hidden" name="launch-code" value="8zm219">
  <input type="submit" value="Launch Nuke" id="launch-btn">
</form>
```

Given the html form above, add an event listener to the submit button, so that when it's clicked, the default behavior is negated and an alert window pops up that says, `"What are you trying to do? Hurl us headlong into a nuclear holocaust?!"`

```
var message = "What are you trying to do? Hurl us headlong into a nuclear holocaust?!"

>>
>>
>>
>>
>>
>>
```
