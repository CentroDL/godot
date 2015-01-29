var count=0;

var bang = function(event){

  var target = $("body");
  count += 1;

  if (count > 10){
    // count = 0;
    // target.css({
    //   background-color: black;
    // });
    target.addClass("dead");
    $("img").addClass("hidden");
  }
  else{
    target.addClass("shot");
    setTimeout(  function(){ target.removeClass("shot") }, 3000 );
  }
};

var press = function(){
  console.log(String.fromCharCode(event.keyCode));

  // Fifth, if you press C can you append the names in the "cast" object in "cast.js" as li tags in to the "ul#cast" and remove the class "hidden"?
  if(String.fromCharCode(event.keyCode) == 'c'){
    var $ul = $("#cast");
    if( $ul.hasClass("hidden")){
      $ul.removeClass("hidden");
      for( var member in cast){
        $("<li>").text(cast[member].actor).appendTo($ul);
        console.log( cast[member].actor );
      }
    }
  }
};

// once the DOM has loaded
$(document).ready(function(){
  // attach event listener
  $(window).on("mousemove", bang);
  $(window).on("keypress", press);

});
