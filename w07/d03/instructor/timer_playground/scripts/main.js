//======================================================
// Never Fear, The Code Below is For An Upcoming Example
//======================================================
var body = document.querySelector('body');
var pronunciation = "poh-TAY-toh";

var debate = function(){
  console.log(pronunciation);
  if (pronunciation === "poh-TAY-toh"){
    pronunciation = "po-TAH-toh";
  } else {
    pronunciation = "poh-TAY-toh";
  }
};

// setTimeout takes two arguments, the first is a function which holds the code we want to execute, and the second is the delay in milliseconds. Thus, the code below will run after 5 seconds.
setTimeout(function(){
  console.log("Game of Thrones, Season 5. Oh yeah.");
}, 5000);

var createP = function(){
  var newP = document.createElement("p");
  newP.textContent = "The Beatles";
  body.appendChild(newP);
};

setTimeout(createP, 6000);

var timerOne = setInterval(debate, 1000);
var timerTwo = setInterval(debate, 1000);
var timerThree = setInterval(debate, 1000);












