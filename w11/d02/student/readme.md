# This is a test

```js
describe("something we want to test", function(){

   it("has specificiations of what we want the code to do", function(){
        expect(2 + 2).toEqual(4)
    }); 

});
```

Today we're going to get started making tests pass.

In "unit tests" we test individual units of code like modules, functions, methods or classes.

Take a look at the [Jasmine documentation](http://jasmine.github.io/2.2/introduction.html).

Jasmine follows a ["Behavioral Driven"](http://en.wikipedia.org/wiki/Behavior-driven_development) approach to testing.

## Getting started

Open up `intro_to_jasmine` and take a look the folder structure.

```
.
├── SpecRunner.html
├── lib
│   └── jasmine-2.2.0
│       ├── boot.js
│       ├── console.js
│       ├── jasmine-html.js
│       ├── jasmine.css
│       ├── jasmine.js
│       └── jasmine_favicon.png
├── spec
│   └── intro_spec.js
└── src
    └── intro.js
```

`lib` contains all the testing code.

`spec` is where we'll write our tests. The convention is to name your files after the real code files and append with `_spec`

`src` is where we'll write our code to make our tests pass.

Open up `SpecRunner.html` in your browser.

