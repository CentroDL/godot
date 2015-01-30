$("button.way-no-way").on("click", function(){
  if( $(this).text() === "no way")
    $(this).text("way");
  else
    $(this).text("no way");

});

$("span.name").on( "click", function(){
  $(this).addClass("hidden");
  $("input.input-name").removeClass("hidden");
  $("input.input-name").val( $(this).text() );
});

$("input.input-name").on("keypress", function(e){
  if( e.which === 13 ){
    $(this).addClass("hidden");
    $("span.name").removeClass("hidden");
    $("span.name").text( $(this).val() );
  }
});

var scale = 1;

$("img.extreme-closeup").on("mousedown", function(e){
  //console.log( $(e.target).css("transform") );
  $(e.target).css("transform", "scale(" + (scale = scale * 1.1) + ")");
})

// Add an event listener to "img.extreme-closeup" so that when you fire a mouseup event, the element's CSS "transform: scale(x)" property revert back to "scale(1)"

$("img.extreme-closeup").on("mouseup", function(e){
  $(e.target).css("transform", "scale(1)");
});








