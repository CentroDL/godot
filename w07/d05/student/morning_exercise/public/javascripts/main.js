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
  console.log( $(e.target).css("transform") );
  $(e.target).css("transform", "scale(" + (scale = scale * 1.1) + ")");
})





