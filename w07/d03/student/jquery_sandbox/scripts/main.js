var $title = $("#title");

$title.addClass("pleasant");

$title.attr("role", "page identification");

var $lis = $("li");
$lis.eq(0).css( "color", "orange" );

var $newLi = $("<li>");
$newLi.text("Bully Repulsion");

$("ul").append($newLi);

var $tomboy = $("<li class='tomboy' id='marpdarp'>");
$tomboy.text("Hey Class");
$tomboy.css("display", "none");

$("ul").append($tomboy);

$tomboy.fadeIn("slow");
