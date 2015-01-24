var color = "green";
var colors = ["red", "goldenrod", "blue"];

var mouseDepressed = false;

var body = document.querySelector("body");

var canvas = body.querySelector(".canvas");
var palette = body.querySelector(".color-palette");

var hoverListener = function(event){

  event.target.className += " " + color;
}

var reset = function(event){
  // Awesome. Now head back to the event listener you added for mouseouts (part 2). Only remove the class green if mouseDepressed is false.
  if( !mouseDepressed )
  event.target.classList.remove(color);
}

var mouseDep = function(event){
  mouseDepressed = !mouseDepressed;
  // console.log("poop!");
}

var setColor = function(){
  color = event.target.classList[0];
}

var clearGreen = function(event){
  var tiles = canvas.querySelectorAll(".tile");
  for(var i=0; i < tiles.length; i++){
    tiles[i].setAttribute("class", "tile");
  }

}
for(var i=0; i<colors.length; i++){
  var div = document.createElement("div");
  div.className = colors[i] + " droplet";
  palette.appendChild(div);
}

for(var i = 0; i < 805; i++){
  var tile = document.createElement("div")
  tile.setAttribute("class", "tile");
  tile.addEventListener( "mouseover" , hoverListener);
  tile.addEventListener("mouseout", reset);
  canvas.appendChild(tile);
}

var droplets = palette.querySelectorAll(".droplet");
for(var i=0; i < droplets.length; i++){
  droplets[i].addEventListener("click", setColor);
}

var tiles = canvas.querySelectorAll(".tile");
canvas.addEventListener("mousedown", mouseDep);
canvas.addEventListener("mouseup", mouseDep);

 var resDiv = document.querySelector(".reset");
 var resPar = resDiv.querySelector("p");
 resPar.addEventListener("click", clearGreen);


