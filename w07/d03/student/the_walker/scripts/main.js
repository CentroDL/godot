// caches the walker; we're going to be dealing with him a lot
var theWalker = document.getElementById('the-walker');

theWalker.style.right = "0";


var dx = 20;

var flipRight = function(){
  dx = -20;
  theWalker.setAttribute("class", "walk-right");
};

var flipLeft = function(){
  dx = 20;
  theWalker.setAttribute("class", "");
}

var walk = function(){
  var newPos = ( parseInt(theWalker.style.right) + dx ).toString() + "px";
  theWalker.style.right = newPos;
};

var walkLeft = setInterval( function(){

  if( parseInt(theWalker.style.right) >= 1000 )
    flipRight();

  if( parseInt(theWalker.style.right) <= 0 )
    flipLeft();

  walk();

}, 65);

//TODO fix this
theWalker.addEventListener( "click", function(){
  console.log("clicked the walker");
  if(dx >= 0)
    flipLeft();
  else
    flipRight();
});





