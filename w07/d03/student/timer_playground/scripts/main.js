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

setTimeout(function(){
  console.log("GoT Season 5, oh yeah!");
},5000);

var createP = function(){
  var newP =document.createElement("p");
  newP.textContent = "The Beatles";
  body.appendChild(newP);
};

setTimeout(createP, 5000);

var timerOne = setInterval(debate, 1000);

var nah = setInterval(function(){
  var p = document.createElement("p");
  p.style.color = "blue";
  p.textContent = "Nah nah nah nah nah nah nah, Hey-Jude.";
  body.appendChild(p);
},5000);

var pageTimeOut = setTimeout(
  function(){
    var p = document.createElement("p");
    p.style.color="red";
    p.textContent = "Wow, you must really like this page...";
    body.appendChild(p);
  }, 15000);

var timers = [ nah, pageTimeOut];


var button = document.querySelector("button");
button.addEventListener( "click", function(){
  if(timers.length !== 0){
    var timer = timers.pop();
    console.log("Cleared " + timer );
    clearInterval(timer);
  }
  if(timers.length === 0)
      this.remove();
});












