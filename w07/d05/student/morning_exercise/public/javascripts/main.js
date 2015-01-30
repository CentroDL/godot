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
  $(e.target).css("transform", "scale(" + (scale = scale * 1.1) + ")");
})

$("img.extreme-closeup").on("mouseup", function(e){
  $(e.target).css("transform", "scale(1)");
  scale = 1;
});

var notCount = 0;

$("input.input-phrase").on("keypress", function(e){
  if(e.which === 13){
    var p = $("<p>").text( $(e.target).val() )
    p.on("click", function(e){
      $(e.target).append("...NOT");
      notCount++;

    if( notCount >= 5 ){

      $("div.flash").addClass("show");

      setTimeout(function(){
        $("div.flash").removeClass("show");
      }, 3000)
    }

    });
    p.appendTo( $("div#phrases") );
    $(e.target).val("");
  }
});















