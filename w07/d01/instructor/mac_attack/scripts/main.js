console.log('main.js loaded');

// create content
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums:"

window.addEventListener("load", function(){
  console.log("LOAD");
  // add content to the DOM
  var elAlbums = document.querySelector(".albums");
  elAlbums.appendChild(p);
  elAlbums.appendChild(ul);

  for (var i=0, len=fleetwoodMacAlbums.length; i<len; i++) {
    var li = document.createElement("li");
    li.setAttribute("class", "album");
    li.textContent = fleetwoodMacAlbums[i].title + ", " + fleetwoodMacAlbums[i].releasedOn;
    ul.appendChild(li);
  }
});
console.log("in main js, but after the load event listener");
console.log(fleetwoodMacAlbums);


