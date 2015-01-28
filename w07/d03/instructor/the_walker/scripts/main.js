// caches the walker; we're going to be dealing with him a lot
var theWalker = document.getElementById('the-walker');

var pixelCountFromRight = 0;
var walkingLeft = true;
theWalker.style.right = pixelCountFromRight + "px";

var walk = function(){
  if (pixelCountFromRight > 600 || pixelCountFromRight < 0){
    theWalker.classList.toggle("walk-right");
    walkingLeft = !walkingLeft;
  }
  if (walkingLeft){
    pixelCountFromRight += 15;
  } else {
    pixelCountFromRight -= 15;
  }
  theWalker.style.right = pixelCountFromRight + "px";
};

setInterval(walk, 200);




