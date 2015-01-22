// creating a click event handler
var clickEventHandler = function(event) {
  var body;
  body = document.querySelector('body');
  body.style.backgroundColor = "blue";
};

// adding a click event listener
var button = document.querySelector("button");
button.addEventListener('click', clickEventHandler);

// the Element that triggered the event
event.target
// the Type of event
event.type
// Don't trigger any other parent elements that might have the same Event Listener
event.stopPropagation();
// Stop the normal behavior of the element
event.preventDefault();
