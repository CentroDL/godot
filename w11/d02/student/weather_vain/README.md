## Weather Vain

Today, you began your exploration of AJAX. Now, you put it to use in the most common way: by grabbing data from form inputs.

#### Exercise Objective(s)

- get comfortable using AJAX to dynamically retrieve information from a server
- practice using event listeners and manipulating the DOM

#### Directions

1. Within your [`scripts/main.js`](scripts/main.js) file, use jQuery to make an AJAX request to retrieve the current weather for "milwaukee".
  - validate that your ajax call worked by using the network tab and checking the payload
1. Once your ajax call is returning the data you want, use `.done` to add the text "In Milaukee it's BLANK degrees Kelvin" to the paragraph tag with id of "forecast".
1. Once you're able to display the information for Milwaukee, make the ajax call dynamic, so that users can enter a city name in the input field, and the ajax call gets the temperature data for that city and changes the display appropriately.
