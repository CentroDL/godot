console.log("main.js linked");

// Query the DOM for the h1 and store it in a sensibly named variable.
var h1 = document.querySelector("h1");

// Change the header's text so that it reads "Inhabitants of Los Angeles (1984)".
h1.textContent += " (1984)";

// Query the DOM for any list items with the class of cop, and store the elements in a variable called cops.
// var cops = document.querySelectorAll(".cop");
var cops = document.getElementsByClassName(".cop");


// Loop through all the cops, giving each the color of lightskyblue.
for( var i = 0, len = cops.length; i < len; i++){
  cops[i].style.color = "lightskyblue";
}

// Create a div with the class of terminator, and append it to the div with the id of los-angeles.
// var terminator = document.createElement("h1");
var terminator = document.createElement("div");
//terminator.setAttribute("class", "terminator");
terminator.className = "terminator"
var la = document.querySelector("#los-angeles")
la.appendChild(terminator);

// Query the DOM for the element with id of the-one-true-sarah-connor, and save it in a variable called theOneTrueSarahConnor.
var theOneTrueSarahConnor = document.querySelector("#the-one-true-sarah-connor");

// Give theOneTrueSarahConnor the class of badass.
theOneTrueSarahConnor.setAttribute("class","badass");

// Query the DOM for all elements that have the class collateral-damage, and save the elements in a variable called poorSouls.
var poorSouls = document.querySelectorAll(".collateral-damage");

// Iterate through poorSouls, removing the elements from the DOM one by one.
// Remove the terminator from the DOM.
for( var i = 0, len = poorSouls.length; i < len; i++){
  poorSouls[i].parentNode.removeChild(poorSouls[i]);
}

document.querySelector("#los-angeles").childNodes[5].remove()
