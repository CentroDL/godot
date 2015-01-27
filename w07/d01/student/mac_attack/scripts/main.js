console.log('main.js loaded');


// create content
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums:"

var addLiWithContent = function(ul, content){
  var li  = document.createElement("li");
  var div = document.createElement("div");
  var img = document.createElement("img");

  li.setAttribute("class", "album");
  img.setAttribute("src", content.image);
  img.setAttribute("height", "45px");
  div.textContent = content.title + " " + moment(content.releasedOn).format("MMM Do YYYY");
  // li.textContent = content.title;
  div.appendChild(img);
  li.appendChild(div);
  ul.appendChild(li);
}

window.addEventListener("load", function(){
  // add content to the DOM
  var elAlbums = document.querySelector(".albums");
  elAlbums.appendChild(p);
  elAlbums.appendChild(ul);

  //make the li and add to DOM
  for(var i = 0, len = fleetwoodMacAlbums.length; i < len; i++){
    addLiWithContent(ul, fleetwoodMacAlbums[i])
  }

});
