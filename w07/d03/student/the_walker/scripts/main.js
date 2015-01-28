// caches the walker; we're going to be dealing with him a lot
var theWalker = document.getElementById('the-walker');

theWalker.style.right = "0";

var dx = 20;

var walkLeft = setInterval( function(){

  if( parseInt(theWalker.style.right) >= 1000 ){
    dx = -20;
    theWalker.setAttribute("class", "walk-right");
  }

  if( parseInt(theWalker.style.right) <= 0 ){
    dx = 20;
    theWalker.setAttribute("class", "");
  }

  var newPos = ( parseInt(theWalker.style.right) + dx ).toString() + "px";
  // console.log(newPos);


  theWalker.style.right = newPos;
}, 65);



