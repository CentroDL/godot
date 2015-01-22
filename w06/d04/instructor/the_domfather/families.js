var body = document.querySelector("body");

var invertBodyHandler = function(event) {
  body.style.backgroundColor = "black";
  body.style.color = "white";
}

body.addEventListener("click", invertBodyHandler);

// after 149 clicks remove Sonny from the DOM
// define counter outside of the function
// because we don't want to redefine it every time
var counter = 0;

var burySonnyHandler = function(event) {
  // don't want to trigger the body click event
  event.stopPropagation();
  // event.target is what we clicked on
  // we've also referenced it outside the function as "sonny"
  event.target.style.backgroundColor = "red";
  // if sonny has been clicked 149 times
  // remove him from the dom
  counter++;
  if (counter > 10) {
    corleone.removeChild(sonny);
  }
}

sonny.addEventListener("click", burySonnyHandler);
