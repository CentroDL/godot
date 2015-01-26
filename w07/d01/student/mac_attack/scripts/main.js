console.log('main.js loaded');

// create content
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums:"

// add content to the DOM
var elAlbums = document.querySelector(".albums");
elAlbums.appendChild(p);
elAlbums.appendChild(ul);
