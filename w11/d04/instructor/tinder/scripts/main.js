$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  var $userInfo    = $(".user-info"),
      $xButton     = $(".x");
      $heartButton = $(".heart");

  // fake data for a template that expects 'image_url', 'name', and 'age'
  var fakeData = {
    name: "Phil",
    age: 33,
    image_url: "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/654/phillip-lamplugh.jpg"
  };

  // grabs template as a string
  var templateSource = $("#tinder-template").html();


});



























    $.ajax({
      url: "http://api.randomuser.me",
      type: "GET",
      dataType: "json"
    }).done(function(data){
      var user = data["results"][0]["user"];
      var firstName = user.name.first;
      var age = 28;
      var pictureURL = user["picture"]["large"];
      var image = $("<img>").attr("src", pictureURL);
      var newTinderHTML = fillTemplateWith({
        image_url: pictureURL,
        name: firstName,
        age: 31
      });
