console.log('main.js loaded');

// content creation example
var p  = document.createElement("p");
var ul = document.createElement("ul");
p.textContent = "A list of their albums from the '70s:"

// moment.js functions //

// get the year for an album
var yearOf = function(dateString) {
  return moment(dateString).year();
}

// return a correctly formatted date string
var reformatDate = function(dateString) {
  return moment(dateString).format("MMM Do, YYYY");
}

// check if a date is in the seventies!
// http://momentjs.com/docs/#/query/is-between
var decadeIsTheSeventies = function(dateString) {
  var momentDate = moment(dateString);
  return momentDate.isBetween('1970-01-01', '1979-12-31');
}
// alternately... (K.I.S.S.!)
// var decadeIsTheSeventies = function(dateString) {
//   var year = moment(item.releasedOn).year();
//   return (1970 <= year) && (year < 1980);
// }

// content creation functions //

// create an element (utility): returns an element
document.cEl = function(tagName, classList, text) {
  var el = document.createElement(tagName);
  el.setAttribute("class", classList); // el.classList = classList;
  el.textContent = text;
  return el;
}

// special content-related functions for mac_attack //

// log an album's title
var logTitle = function (album, index){
  console.log(_.padLeft(index+1, 2) + ". " + album.title);
}

// create an album's simple li tag's content
// var liTextContent = function(item) {
//   var text = "Name: " + item.title + ", " +
//              "Released: " + reformatDate(item.releasedOn);
//   return text;
// }

// create an album's full li tag
var albumLi = function(album) {
  var li,          // tag: li,   class: album
      div,         // tag: div,  class: album-content
      title,       // tag: h3,   class: album-title
      cover,       // tag: img,  class: album-cover, height/width: 75px
      releaseText, // tag: p,    "Released *releaseDate* *(label)*"
      releaseDate, // tag: span, class: album-date
      formattedDate,
      label,       // tag: span, class: album-label
      trackList;   // tag: ol,   class: album-tracklist

  li  = document.cEl("li",  "album");
  div = document.cEl("div", "album-content");
  li.appendChild(div);

  title = document.cEl("h3", "album-title", album.title);
  div.appendChild(title);

  cover = document.cEl("img", "album-cover");
  cover.setAttribute("src",    album.image);
  cover.setAttribute("height", "75px");
  cover.setAttribute("width",  "75px");
  div.appendChild(cover);

  formattedDate = reformatDate(album.releasedOn);
  releaseDate   = document.cEl("span", "album-date",  formattedDate);
  label         = document.cEl("span", "album-label", " (" + album.label + ")");
  releaseText   = document.cEl("p",    "",            "Released ");
  releaseText.appendChild(releaseDate);
  releaseText.appendChild(label);
  div.appendChild(releaseText);

  // each track is an item in an ordered list
  // tag: li, class: track (contains a link!)
  // (the link is...) tag: a, href: spotify:search:fleetwood+mac+track+name",
  //                  "0. TrackName (TrackLength)"
  trackList = document.cEl("ol", "album-tracklist");
  div.appendChild(trackList);

  _.each(album.tracklist, function(trackObject, index) {
    var title     = trackObject.title;
    var trackText = _.padLeft(index+1, 2) + ". " + title + " (" + trackObject.length + ")";
    var track     = document.cEl("li", "track")
    var trackLink = document.cEl("a", "", trackText);
    var link      = "spotify:search:" + "fleetwood+mac+" +
                    title.toLowerCase().replace(' ','+');
    trackLink.setAttribute("href", link);
    track.appendChild(trackLink);
    trackList.appendChild(track);
  });

  return li;
}

// special album is in seventies function
var seventiesAlbum = function(album) {
  return decadeIsTheSeventies(album.releasedOn);
}

console.log("in main.js, before the load event listener");
window.addEventListener("load", function(){
  console.log("the load event has fired! (in main.js, in the load event)");

  // add basic content to the DOM
  var elAlbums = document.querySelector(".albums");
  elAlbums.appendChild(p);
  elAlbums.appendChild(ul);

  // begin using lo-dash to enumerate over the album list

  // make sure we're "in business" by logging all of the titles
  _.each(fleetwoodMacAlbums, logTitle);

  // use select to get just the albums from the seventies
  var seventiesAlbums = _.select(fleetwoodMacAlbums, seventiesAlbum);

  // map the list of albums to a list of simple lis!
  // var lis = _.map(seventiesAlbums, function(album) {
  //   return document.cEl("li", "album", liTextContent(album));
  // });
  // console.log(lis); // check 'em out! are they there?

  // map the list of albums to a list of lis!
  var lis = _.map(seventiesAlbums, albumLi);
  console.log(lis);

  // append each li to the dom!
  _.each(lis, function(li) {
    ul.appendChild(li);
  });
});
console.log("in main.js, **after** the load event listener");


