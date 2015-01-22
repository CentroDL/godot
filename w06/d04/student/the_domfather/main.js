var sonny = document.createElement("li");

sonny.textContent = "Sonny";

corleones = document.getElementById("corleone");

corleones.appendChild(sonny);

fiveFams = document.createElement("ul");

fiveFams.setAttribute("id", "five-families");

document.body.appendChild(fiveFams);

sonny.style.backgroundColor = "red";

sonny.setAttribute("class", "mobster");

document.querySelector("#corleone").children[0].setAttribute("class", "mobster");
// items = document.querySelectorAll("li");

// for(var i =0; i<items.length; i++){
// items[i].setAttribute("class", "mobster");
// }
