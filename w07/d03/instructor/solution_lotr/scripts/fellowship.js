console.log("Fellowship loaded.");

// Create some global variables to
// make it easier to access the DOM nodes from the console
var $frodo,
    $gollum,
    $hobbits,
    $mordor,
    $ring,
    $rivendell,
    $sam,
    $soulmates,
    $theShire;

var $body = $('body');

var makeMiddleEarth = function () {
  var $middleEarth = $('<section id="middle-earth">');
  for(var i = 0, len = lands.length; i < len; i++){
    var $land = $('<article>');
    $land.append('<h1>' + lands[i] + '</h1>');
    $middleEarth.append($land);
  }
  $body.append($middleEarth);
  setTimeout(makeHobbits, 2000);
}

var makeHobbits = function () {
  $theShire = $('article').eq(0);
  $hobbitList = $('<ul>');
  for(var i = 0, len = hobbits.length; i < len; i++){
    var $hobbit = $('<li class="hobbit">' + hobbits[i]  + '</li>');
    $hobbitList.append($hobbit);
  }
  $theShire.append($hobbitList);

  setTimeout(keepItSecretKeepItSafe, 2000);
}

var keepItSecretKeepItSafe = function () {
  $frodo = $('li').eq(0);
  $ring = $('<div id="the-ring" class="magic-imbued-jewelry">');
  $ring.on('click', nazgulScreech);
  $frodo.append($ring);
  setTimeout(makeBuddies, 2000);
}

var makeBuddies = function () {
  var $aside = $('<aside>');
  var $buddyList = $('<ul>');
  for(var i = 0, len = buddies.length; i < len; i++){
    $buddyList.append('<li>' + buddies[i] + '</li>');
  }
  $aside.append($buddyList);
  $rivendell = $('article').eq(1);
  $rivendell.append($aside);
  setTimeout(beautifulStranger, 2000);
}

var beautifulStranger = function () {
  var $strider = $('li').eq(-2);
  $strider.text('Aragorn').css("color", "green");
  setTimeout(leaveTheShire, 2000);
}

var leaveTheShire = function () {
  $hobbits = $('.hobbit');
  $('article').eq(1).append($hobbits);
  setTimeout(forgeTheFellowShip, 2000);
}

var forgeTheFellowShip = function () {
  var $theFellowship = $('<div id="the-fellowship">');
  var rivendell = $('article').eq(1).append($theFellowship);
  var $hobbitsNBuddies = $('li');
  for(var i = 0; i < $hobbitsNBuddies.length; i++){
    var $character = $hobbitsNBuddies.eq(i);
    $theFellowship.append($character);
  }
  setTimeout(theBalrog, 2000);
}

var theBalrog = function () {
  var $gandalf = $('li').first();
  $gandalf.text('Gandalf the White').css("border", "3px solid white");
  setTimeout(hornOfGondor, 2000);
}

var hornOfGondor = function () {
  alert('The Horn of Gondor has blown!');
  var $boromir = $('li').eq(4).css({ opacity: 0.3, textDecoration: 'line-through'});
  setTimeout(itsDangerousToGoAlone, 2000);
}

var itsDangerousToGoAlone = function (){
  $sam = $frodo.next();
  $mordor = $rivendell.next();
  $mordor.append($frodo);
  $mordor.append($sam);
  $mountDoom = $('<div id="mount-doom">');
  $mordor.append($mountDoom);
  setTimeout(weWantsIt, 2000);
}

var weWantsIt = function () {
  $gollum = $('<div id="gollum">');
  $gollum.append($ring);
  $mountDoom.append($gollum);
  setTimeout(thereAndBackAgain, 1000);
}

var thereAndBackAgain = function () {
  $gollum.remove();
  $mordor.addClass("collapse");
  $theShire.append($hobbits);
}

setTimeout(makeMiddleEarth, 2000);
