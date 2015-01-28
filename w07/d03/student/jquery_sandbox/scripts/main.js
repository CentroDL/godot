// var $title = $("#title");

// $title.addClass("pleasant");

// $title.attr("role", "page identification");

// var $lis = $("li");
// $lis.eq(0).css( "color", "orange" );

// var $newLi = $("<li>");
// $newLi.text("Bully Repulsion");

// $("ul").append($newLi);

// var $tomboy = $("<li class='tomboy' id='marpdarp'>");
// $tomboy.text("Hey Class");
// $tomboy.css("display", "none");

// $("ul").append($tomboy);

// $tomboy.fadeIn("slow");
$h1 = $("h1");
$h1.addClass("classy");
$h1.text("The Fart Store");
$h1.css("font-size", "8em");

$("body").addClass("backdrop");

// Target the first paragraph tag on the DOM, and change its text so that it reads '- Established 2014 -'. Then give it the class 'sub-head'
$("p:first").text("- Established 2014 -");
$("p:first").addClass("sub-head");
// Target the second paragraph tag on the DOM, and give it the inner html "Everything You Need to Start <span>Farting</span> Around"
$("p").eq(1).html("Everything You Need to Start <span>Farting</span> Around");
// Remove the h2 from the dom
$("h2").remove();
// Remove the entire unordered list of features from the DOM
$("ul").remove();
// Give all of the paragraphs tags the 'classy' class.
$("p").addClass("classy");
// Create a div with class of 'product-container'. Append 8 new child divs with the class of 'jar'.
var $prodContainer = $('<div class="product-container">');

for(var i=0, end=8; i<end; i++){
    var $newJar = $('<div class="jar">');
    $prodContainer.append($newJar);
}

// Add the 'product-container' div after the second <p> tag.
// Look into the jquery's .after() method
$("p").eq(1).after($prodContainer);
// Create a button element with text "Sample The Product", and an id of "sample-button". Append it to the DOM's <body> element.
var $button = $('<button>');
$button.text("Sample The Product");
$button.attr("id", "sample-button");

$("body").append( $button );

$button.on("click", function(){
  var $div = $('<div class="product">');

  $div.fadeIn("slow", function(){
    setTimeout( function(){ $div.fadeOut("slow"); }, 5000);
  });

  $("body").append($div);

});




