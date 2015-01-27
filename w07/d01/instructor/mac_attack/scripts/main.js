console.log('main.js loaded');

// create content
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums:"

// enumeration actions

// log title for each
var logTitle = function (album){
  console.log(album.title);
}

var liTextContent = function(item) {
  var text = "Name: " + item.title + ", Released: " +
             moment(item.releasedOn).format("MMM Do, YYYY");
  return text;
}

// return a list of albums in the seventies
var decadeIsTheSeventies = function(item) {
  var year = moment(item.releasedOn).year();
  return (1970 <= year) && (year < 1980);
}

_.each(fleetwoodMacAlbums, logTitle);

window.addEventListener("load", function(){
  console.log("LOAD");
  // add content to the DOM
  var elAlbums = document.querySelector(".albums");
  elAlbums.appendChild(p);
  elAlbums.appendChild(ul);

  var seventiesAlbums = _.select(fleetwoodMacAlbums, decadeIsTheSeventies);

  // map the list of albums in to a list of lis!
  var lis = _.map(seventiesAlbums, function(album) {
    var li = document.createElement("li");
    li.setAttribute("class", "album");
    li.textContent = liTextContent(album);
    return li;
  });
  console.log(lis)

  // append each li to the dom!
  _.each(lis, function(li) {
    ul.appendChild(li);
  });
});
console.log("in main js, but after the load event listener");
console.log(fleetwoodMacAlbums);


