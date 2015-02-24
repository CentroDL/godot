$(document).ready(function(){
  console.log("document ready");

  // caches reference to body element
  var $body = $("body");

  $("#random-user-btn").on("click", function(){
     $.ajax({
        url: "http://api.randomuser.me",
        type: "GET",
        dataType: "json"
     }).done(function(data){
      var user = data["results"][0]["user"];
      var pictureURL = user["picture"]["medium"];
      var image = $("<img>").attr("src", pictureURL);
      $("body").append(image);
     });
  });

$("#female-user-btn").on("click", function(){
  $.ajax({
    url: "http://api.randomuser.me",
    type: "GET",
    data: { gender: "female" },
    dataType: "json"
  }).done(function(data){
      var user = data["results"][0]["user"];
      var pictureURL = user["picture"]["medium"];
      var image = $("<img>").attr("src", pictureURL);
      $("body").append(image);
   });
});

});

