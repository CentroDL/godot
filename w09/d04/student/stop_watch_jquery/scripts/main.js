$(document).ready(function(){
  // caches DOM nodes
  var $startButton = $("#start");
  var $resetButton = $("#reset");
  var $pauseButton = $("#pause");
  var $headline    = $("h1");

  // count starts at zero.
  var counter = 0;

  // timer inactive by default
  var timerActive = false;

  // scopes the ID variable so that all callback functions can change the value.
  var intervalID;

  $startButton.on("click", function(){
    timerActive = true;
    $headline.text("Time Elapsed: " + counter);
    intervalID = setInterval(function(){
      counter++;
      $headline.text("Time Elapsed: " + counter);
    }, 1000);
  });

  $resetButton.on("click", function(){
    console.log("reset was clicked");
    clearInterval(intervalID);
    $headline.text("Stop Watch");
    counter = 0;
  });

  $pauseButton.on("click", function(){
    console.log("pause clicked");
    if (timerActive) {
      clearInterval(intervalID);
      timerActive = false;
    } else {
      // this interval code appears verbatim up above; opportunity to refactor, methinks
      intervalID = setInterval(function(){
        counter++;
        $headline.text("Time Elapsed: " + counter);
      }, 1000);
    }
  });

});console.log("main.js linked");
