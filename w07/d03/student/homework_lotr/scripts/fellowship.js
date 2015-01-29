console.log("fellowship.js loaded");


var makeMiddleEarth = function(){
  // Create a section tag with an id of middle-earth
  var $newSec = $("<section>").attr("id", "middle-earth");
  // Create an article tag for each land in the lands array in characters.js
  for(var i=0, len=lands.length; i < len; i++){
    // Give each article tag a class of "land"
    var $newArt = $("<article>").addClass("land");

    // Inside each article tag include an h1 with the name of the land
    var h1 = $("<h1>").text(lands[i]);
    $newArt.append(h1);
    // Append each article.land to section#middle-earth
    $newSec.append($newArt);
  }
  // Append section#middle-earth to the document body
  $("body").append($newSec);
  // Use setTimeout to delay the execution of the next function (in this case,
  // makeHobbits) by several seconds
  setTimeout( makeHobbits, 2000);
};

var makeHobbits = function(){
  // Create a ul with an id of "hobbits"
  var $newUl = $("<ul>").attr("id", "hobbits");
  // Create li tags for each Hobbit in the hobbits array in characters.js
  for(var i = 0, len = hobbits.length; i < len; i++){
  // Give each li tag a class of "hobbit"
    var $newLi = $("<li>").addClass("hobbit");
  // Set the text of each li.hobbit to one of the Hobbits in the array
    $newLi.text(hobbits[i]);
  // Append the ul#hobbits to the article.land representing "The Shire"
    $newUl.append($newLi);
  }
  // (the first article tag on the page)
  $("article:first").append($newUl);
  setTimeout(keepItSecretKeepItSafe, 2000);
};

var keepItSecretKeepItSafe = function() {
  // Create a div with an id of 'the-ring'
  var $theRing = $("<div>").attr("id", "the-ring");
  // Give div#the-ring a class of 'magic-imbued-jewelry'
  $theRing.addClass("magic-imbued-jewelry");
  // Add an event listener so that when a user clicks on the ring,
  $theRing.on("click", nazgulScreech);
  // The nazgulScreech function (provided in index.html) is invoked
  // Add div#the-ring as a child element of the li.hobbit representing "Frodo"
  $(".hobbit:first").append($theRing);
  // Use setTimeout to delay the execution of the next function
  setTimeout(makeBuddies,2000);
}

var makeBuddies = function() {
  // Create an aside tag
  var $aside = $("<aside>");
  // Create a ul tag with an id of "buddies" and append it to the aside tag
  var $buddies = $("<ul>").attr("id", "buddies");
  $aside.append($buddies);
  // Create li tags for each buddy in the buddies array in characters.js
  for(var i=0, len = buddies.length; i < len; i++){
  // give each li tag a class of "buddy" and append them to "ul#buddies"
    var $buddy = $("<li>").addClass("buddy");
    $buddy.text(buddies[i]);
    $buddies.append($buddy);
  };
  // Insert the aside tag as a child element of the secion.land representing "Rivendell"
  $(".land").eq(1).append($aside);
  // Use setTimeout to delay the execution of the next function
  setTimeout(beautifulStranger, 2000);
}

var beautifulStranger = function() {
  // Find the li.buddy representing "Strider"
  var $strider = $(".buddy").eq(3)
  // Change the "Strider" textnode to "Aragorn" and make its text green
  $strider.text("Aragorn").css("color", "green");
  // Use setTimeout to delay the execution of the next function
  setTimeout( leaveTheShire ,2000);
}

var leaveTheShire = function() {
  // Assemble the Hobbits and move them to Rivendell
  var $hobbits = $(".hobbit");
  $hobbits.appendTo($(".land").eq(1));
  // Use setTimeout to delay the execution of the next function
}

setTimeout(makeMiddleEarth, 2000);
