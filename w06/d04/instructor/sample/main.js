console.log("loading file");

// querySelector grabs an element
var pTag = document.querySelector("p");

// textContent changes the elements text
pTag.textContent = "Aloha";

// querySelectorAll grabs all matches
var ingredients = document.querySelectorAll("li");

// We can navigate the DOM tree using
// children and parentElement on elements

var people = document.querySelector("#people").children
var dana = document.querySelectorAll(".student")[1]

// create a DOM node with createElement
var liTag = document.createElement("li"); // not on the DOM
liTag.textContent = "Graham Cracker"; // not on the DOM
document.querySelector("#smores-ingredients").appendChild(liTag); // Now it's on the DOM

// We can remove them from the page too
var choco = document.querySelectorAll('li')[1]
document.querySelector("#smores-ingredients").removeChild(choco);
