$("button.way-no-way").on("click", function(){
  if( $(this).text() === "no way")
    $(this).text("way");
  else
    $(this).text("no way");

});


// Add an event listener to the "span.name" so that when you click on it

// add the class "hidden" to it
// remove the class class "hidden" from "input.input-name"
// set the value of "input.input-name"' to the text of "span.name"

$("span.name").on( "click", function(){
  $(this).addClass("hidden");
  $("input.input-name").removeClass("hidden");
  $("input.input-name").val( $(this).text() );
});

// Add an "keypress" event listener to "input.input-name" so that when you type in a name and hit "return"

// the class "hidden" is added to "input.input-name"
// the class "hidden" is removed from "span.name"
// the value from "input.input-name" is set to the text of "span.name"






