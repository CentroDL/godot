console.log("Loading File");

var pTag = document.querySelector("p");

pTag.textContent = "Aloha";


var liTag = document.createElement("li");

liTag.textContent = "Graham Cracker";

document.querySelector("#smores-ingredients").appendChild(liTag);
