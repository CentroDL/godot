console.log("main.js linked");

var h1 = document.querySelector("h1");
h1.textContent += " (1984)";

var cops = document.querySelectorAll(".cop");

for( var i = 0; i < cops.length; i++){
cops[i].style.color = "lightskyblue";
}

var terminator = document.createElement("h1");
terminator.setAttribute("class", "terminator");
document.querySelector("#los-angeles").appendChild(terminator);

// Query the DOM for the element with id of the-one-true-sarah-connor, and save it in a variable called theOneTrueSarahConnor.
var theOneTrueSarahConnor = document.querySelector("#the-one-true-sarah-connor");
// Give theOneTrueSarahConnor the class of badass.
theOneTrueSarahConnor.setAttribute("class","badass");
// Query the DOM for all elements that have the class collateral-damage, and save the elements in a variable called poorSouls.
var poorSouls = document.querySelectorAll(".collateral-damage");
// Iterate through poorSouls, removing the elements from the DOM one by one.
// Remove the terminator from the DOM.
for( var i = 0; i < poorSouls.length; i++){
document.querySelector("#los-angeles").querySelector("ul").removeChild(poorSouls[i]);
}

document.querySelector("#los-angeles").childNodes[5].remove()
