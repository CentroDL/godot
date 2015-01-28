var images = ["img/city.png", "img/climbers.png", "img/wall.png"];

$("<div>").attr("id", "poster").appendTo("body");

_.each(images, function(img){
  $("<img>").attr("src", img)
            .css({position: "absolute", bottom: 0, right: 0})
            .appendTo("#poster");
});
