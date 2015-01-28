var $title = $("#title");
$title.addClass("pleasant");

$title.attr("role", "page identification");

var $lis = $("li");
$lis.eq(0).css("color", "orange");

// peace sings denote creation of a jQuery object in memory
var $newLi = $("<li>");
$newLi.text('Bully Repulsion');

$("ul").append($newLi);

var $tomboy = $("<li class='tomboy' id='marpdarp'>");
$tomboy.text("Hey Class");

$("ul").append($tomboy);
