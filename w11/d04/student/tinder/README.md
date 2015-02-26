## Tinder Templating

We just took our first foray into JavaScript templating, using pre-written templates and even creating our own. 

#### Exercise Objectives

- gain experience working with pre-written JavaScript templates
- gain experience writing and compiling your own JavaScript templates using lodash

#### Directions

1. Open [`index.html`](index.html) and examine the pre-written template therein. Make note of what values it expects.
1. Compile the template, and invoke the resulting function with some fake data. (As always, feel free to use [Phil](https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/654/phillip-lamplugh.jpg).)
1. Set the resulting HTML as the inner HTML for the div with the class of `"user-info"`
1. Once your template is working, make an AJAX call to the [RandomUser API](http://api.randomuser.me/) to grab some dynamic data.
1. Swap out the hardcoded values you passed to the template earlier for the values you retrieved from the RandomUser API.
  - __Note:__ the RandomUser API doesn't provide an age in years, so if you want to generate a random integer, you can use `~~(Math.random() * 25) + 23`
1. Add a click event listener to the 'X' button, so that each time it's clicked, a new rando appears.
