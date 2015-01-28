// caches DOM queries for efficiency
var $body = $("body");
var $title      = $body.find("#title");
var $allThePeas = $body.find("p");

$title.addClass("classy").text("The Fart Store").css("font-size", "8em");

$body.addClass("backdrop");

$allThePeas.eq(0).addClass("sub-head").text("- Established 2014 -");

$secondP = $allThePeas.eq(1);
$secondP.html("Everything You Need to Start <span>Farting</span> Around");

$("h2").remove();
$("ul").remove();

$allThePeas.addClass("classy");

var $container = $("<div class=\"product-container\">");

for(var i = 0; i < 8; i++){
  var $newJar = $("<div class=\"jar\">");
  $container.append($newJar);
}

$secondP.after($container);

var $button = $("<button>Sample The Product</button>").attr("id", "sample-button");
$container.after($button);







