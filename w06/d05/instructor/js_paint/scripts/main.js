var mouseDepressed = false;
var col = 'green';

var body = document.querySelector("body");

body.addEventListener('mousedown', function(e){
  mouseDepressed = true;
});

body.addEventListener('mouseup', function(e){
  mouseDepressed = false;
});

var canvas = document.querySelector(".canvas");

for(var i = 0, tile; i < 805; i++){
  tile = document.createElement('div');
  tile.className = 'tile';
  tile.addEventListener('mouseover', function(e){
    this.className = this.className + ' ' + col;
  });

  tile.addEventListener('mouseout', function(e){
    if (mouseDepressed === false){
      this.className = 'tile';
    }
  });
  canvas.appendChild(tile);
}

var reset = document.querySelector('.reset');
reset.addEventListener('click', function(){
  for(var i = 0; i < tiles.length; i++){
    tiles[i].className = 'tile';
  }
});

var palette = document.querySelector(".color-palette");
var colors = ["red", "goldenrod", "blue"];

var tiles = document.querySelectorAll('.tile');

for(var i = 0, len = colors.length; i < len; i++){
  var droplet = document.createElement("div");
  droplet.setAttribute('class', colors[i] + " droplet");
  color = colors[i];
  droplet.addEventListener('click', function(e){
    col = this.classList[0];
  });
  palette.appendChild(droplet);
}

var droplets = document.querySelectorAll('.droplet');
