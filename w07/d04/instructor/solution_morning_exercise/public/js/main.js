// define shotcoutn outside of function so we don't keep reassinging it to 0
var shotCount = 0;

var bang = function(event){
  console.log("BANG!");
    // if shotCount is greater than or equal to 10
    if ( shotCount < 10 ) {
      $("body").addClass("shot");
      // change background back to white in 3 seconds
      setTimeout(function(){
        $("body").removeClass("shot");
      }, 3000);
      shotCount++;
    } else {
      $("body").addClass("dead");
      $("img").addClass("hidden");
    }
};

var appendCast = function(){
  // target the ul
  var $ul = $("#cast")
  var $li, actorName;
  // get cast object
  // iterate through each property in the object
  for (prop in cast) {
    // create LI tags for cast object
    // append LIs to the ul
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...in
    // debugger;
    actorName = cast[prop].actor;
    $li = $("<li>").text(actorName);
    // $("<li>").text(actorName).appendTo("#cast");
    $ul.append($li);
  }
  // remove the class hidden from the ul#cast
  $ul.removeClass("hidden");
}

// part 4 handling event.keyCode
var keypressHandler = function(event) {
  console.log(event.keyCode);
  var letter = String.fromCharCode(event.keyCode)
  console.log(letter);
  if (letter === "c") {
    appendCast();
  }
}

// once the DOM has loaded
$(document).ready(function(){
  // attach event listener
  $(window).on("mousemove", bang);
  $(window).on("keypress", keypressHandler);

});
