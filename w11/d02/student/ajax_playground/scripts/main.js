$(document).ready(function(){
  console.log("document ready");

  // caches reference to body element
  var $body = $("body");
  var $randomUserBtn = $("#random-user-btn");
  var $femaleUserBtn = $("#female-user-btn");
  var $maleUserBtn   = $("#male-user-btn");

  $randomUserBtn.on("click", function(){
    $.ajax({
      url: "http:api.randomuser.me",
      type: 'get',
      dataType: "json"
    }).done( function(data){
      var user = data.results[0].user;
      var pictureURL = user.picture.medium;
      var image = $("<img>").attr( "src", pictureURL );
      $body.append(image);
    });
  })

  $femaleUserBtn.on("click", function(){
    $.ajax({
      url: "http://api.randomuser.me",
      type: "get",
      data: { gender: "female" },
      dataType: "json"
    }).done( function(data){
      var user = data.results[0].user;
      var pictureURL = user.picture.medium;
      var image = $("<img>").attr( "src", pictureURL );
      $body.append(image);
    });
  });

  $maleUserBtn.on("click", function(){

    $.ajax({
       url: "http://api.randomuser.me",
      type: "get",
      data: { gender: "male" },
      dataType: "json"
    }).done( function(data){
      var user = data.results[0].user;
      var pictureURL = user.picture.medium;
      var image = $("<img>").attr( "src", pictureURL );
      $body.append(image);
    });
  });


});
