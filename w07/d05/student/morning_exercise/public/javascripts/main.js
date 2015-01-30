$("button.way-no-way").on("click", function(){
  if( $(this).text() === "no way")
    $(this).text("way");
  else
    $(this).text("no way");

});
