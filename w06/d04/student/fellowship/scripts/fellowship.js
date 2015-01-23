console.log("Linked.");

// Dramatis Personae
var hobbits = [
  'Frodo Baggins',
  'Samwise \'Sam\' Gamgee',
  'Meriadoc \'Merry\' Brandybuck',
  'Peregrin \'Pippin\' Took'
];

var buddies = [
  'Gandalf the Grey',
  'Legolas',
  'Gimli',
  'Strider',
  'Boromir'
];

var lands = ['The Shire', 'Rivendell', 'Mordor'];
var body = document.querySelector('body');

var makeMiddleEarth = function(){
  // debugger
  var middleEarth = document.createElement("section");

  middleEarth.setAttribute("id", "middle-earth");

  for(var i=0; i<lands.length; i++){
    var newLand = document.createElement("article");
    var h1 = document.createElement("h1");
    h1.textContent = lands[i];
    newLand.appendChild(h1);
    middleEarth.appendChild(newLand);
  }

  body.appendChild(middleEarth);

};


var makeHobbits = function(){
  // display an unordered list of hobbits in the shire (which is the second article tag on the page)
  // give each hobbit a class of hobbit
  var mid = document.querySelector("#middle-earth");
  var theShire = mid.children[0]//.querySelector("h1")
  ul = document.createElement("ul")

  for(var i=0; i < hobbits.length; i++){
    var hobbit = document.createElement("li");
    hobbit.textContent = hobbits[i];
    ul.appendChild(hobbit);
  }
  theShire.appendChild(ul)
};

var keepItSecretKeepItSafe = function(){
  // create a div with an id of 'the-ring'
  var theRing = document.createElement("div");
  // give the div a class of 'magic-imbued-jewelry'
  theRing.setAttribute("class", "magic-imbued-jewelry");
  // add an event listener so that when a user clicks on the ring, the nazgulScreech function (provided) is invoked
  theRing.addEventListener("click", nazgulScreech);
  // add the ring as a child of Frodo
  body.querySelector("#middle-earth").children[0].querySelector("ul").children[0].appendChild(theRing);

};
var makeBuddies = function(){
  // create an aside tag
  var aside = document.createElement("aside");
  // attach an unordered list of the 'buddies' in the aside
  ul = document.createElement("ul");

  for(var i = 0; i < buddies.length; i++){
    var buddy = document.createElement("li");
    buddy.textContent = buddies[i];
    ul.appendChild(buddy);
  }
  aside.appendChild(ul);
  // insert your aside as a child element of rivendell
  var mid = document.querySelector("#middle-earth");
  var rivenDell = mid.children[1]
  rivenDell.appendChild(aside);
};
var beautifulStranger = function(){
  // change the 'Strider' textnode to 'Aragorn'
  document.querySelector("#middle-earth").children[1].querySelector("ul").children[3].textContent= "Aragorn";
};

var leaveTheShire = function(){
  // assemble the hobbits and move them to Rivendell
  var hobbs = document.querySelector("#middle-earth").childNodes[0].childNodes[1].childNodes;
};
makeMiddleEarth();
makeHobbits();
keepItSecretKeepItSafe();
makeBuddies();
beautifulStranger();
