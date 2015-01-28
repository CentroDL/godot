var head = document.querySelector("head");

var loadJS = function(){
  var script = document.createElement("script");
  script.setAttribute("src", "js/app.js");
  head.appendChild(script);
};

var loadCSS = function(){
  var link = document.createElement("link");
  link.setAttribute( "href", "css/style.css" );
  link.setAttribute( "rel", "stylesheet" );
  head.appendChild(link);
};

var loadStyle = function(){
  var style = document.createElement("style");
  style.textContent = "body {background: blue; }";
  head.appendChild(style);
};

var colorify = function(){
  var color = window.prompt("Enter A Color");
  document.querySelector("style").textContent += "body {background-color: " + color + ";}";
};

var jQueryify = function(){
  var script = document.createElement("script");
  script.setAttribute("src", "https://code.jquery.com/jquery-1.11.2.min.js");
  head.appendChild(script);
  message("jQuery loaded");
};

var message = function(text){
  var message = document.createElement("p");
  message.textContent = text;
  document.body.appendChild(message);
  window.setTimeout( function(){$(message).remove()} , 5000);
};

var lodashify = function(){
  var script = document.createElement("script");
  script.setAttribute("src", "https://cdnjs.cloudflare.com/ajax/libs/lodash.js/2.4.1/lodash.js");
  head.appendChild(script);
  message("loDash loaded");
};

// Requiring others

// Write a function called adventureTime that creates a "script" element with the "src" attribute "js/adventure.js" and append it to the document's head.

// Take a look at the code in js/adventure.js What other two libraries will your adventureTime function need to load in the DOM before it can run?

var adventureTime = function(){
  jQueryify();
  lodashify();
  var script = document.createElement("script");
  script.setAttribute("src", "js/adventure.js");
  head.appendChild(script);
};

loadJS();
loadCSS();
loadStyle();
adventureTime();

