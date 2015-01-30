console.log("hello from main.js");

var scale = 1;
var nots = 0;
var scaleTimerId;

var toggleWay = function(e){
  var msg = $(e.target).text() == "way" ? "no way" : "way";
  $(e.target).text(msg)
}

var extremeCloseup = function(e){
  scaleTimerId = setInterval(function(){
    scale++;
    $(e.target).css( "transform", "scale(" + scale + ")" );
  }, 100);
}

var revertCloseup = function(e){
  clearInterval(scaleTimerId);
  scale = 0;
  $(e.target).css("transform","scale(1)");
}

var appendNot = function(e){
  var text = $(e.target).text();
  $(e.target).text(text + "... NOT!");
  nots++;
  if (nots == 5) {
    excellentFlash();
  }
}

var addPhrase = function(e){
  var value, pTag;
  if (e.keyCode == 13) {
    value = $(e.target).val();
    pTag = $("<p>");
    pTag.on("click", appendNot);
    pTag.text(value).appendTo("#phrases");
  }
}

var textToInput = function(e){
  var text = $(e.target).addClass("hidden").text();
  $(".input-name").val(text).removeClass('hidden');
}

var inputToText = function(e){
  if (e.keyCode == 13) {
    var val = $(e.target).addClass("hidden").val();
    $(".name").text(val).removeClass("hidden");
  }
}

var excellentFlash = function(e) {
  setInterval(function(){
    $(".top-bar.flash").addClass("show");
      setInterval(function(){
        $(".top-bar.flash").removeClass("show");
      }, 2000);
  }, 2000);
}

$(document).ready(function(){
  $("button").on("click", toggleWay);
  $("img").on("mousedown", extremeCloseup);
  $("img").on("mouseup", revertCloseup);
  $(".input-phrase").on("keypress", addPhrase);
  $(".name").on("click", textToInput);
  $(".input-name").on("keypress", inputToText);
});
