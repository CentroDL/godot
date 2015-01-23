var mouseDepressed = false;

var body = document.querySelector("body");

var canvas = body.querySelector(".canvas");

var hoverListener = function(event){

  event.target.className += " green";
}

var reset = function(event){
  // Awesome. Now head back to the event listener you added for mouseouts (part 2). Only remove the class green if mouseDepressed is false.
  if( !mouseDepressed )
  event.target.classList.remove("green");
}

var mouseDep = function(event){
  mouseDepressed = !mouseDepressed;
  // console.log("poop!");
}

var clearGreen = function(event){
  var tiles = canvas.querySelectorAll(".tile");
  for(var i=0; i < tiles.length; i++){
    tiles[i].setAttribute("class", "tile");
  }

}

for(var i = 0; i < 805; i++){
  var tile = document.createElement("div")
  tile.setAttribute("class", "tile");
  tile.addEventListener( "mouseover" , hoverListener);
  tile.addEventListener("mouseout", reset);
  canvas.appendChild(tile);
}

var tiles = canvas.querySelectorAll(".tile");
canvas.addEventListener("mousedown", mouseDep);
canvas.addEventListener("mouseup", mouseDep);

 var resDiv = document.querySelector(".reset");
 var resPar = resDiv.querySelector("p");
 resPar.addEventListener("click", clearGreen);


