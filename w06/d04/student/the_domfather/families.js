//click on the body
//make the background black
//make the text white
var body = document.body;

var invertBody = function(event){
  body.style.backgroundColor = "black";
  body.style.color = "white";
}

body.addEventListener("click", invertBody);

//create a click event handler called clickEventHandler that changes the event.target to red
var timesShot = 0;
var clickEventHandler = function(){
  event.target.style.color = "red";
  event.stopPropagation();
  timesShot += 1;

  if(timesShot >= 149)
    event.target.remove();
}

sonny = document.querySelector("#corleone").children[1];
//add a click event listener to sonny's li that calls clickEventHandler
sonny.addEventListener("click", clickEventHandler);

