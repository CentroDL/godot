$(document).ready(function(){
  console.log("document ready");

  // caches reference to body element
  var $body = $("body");

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

//  on line 7, what is $
//  on line 7, what is .ajax
//  on line 7, what is {
//  on line 8, what is url ?
//  on line 8, what is "http://api.randomuser.me"
//  on line 8, what is type ?
//  on line 8, what is GET ?
//  on line 10, what is "json"  ?
//  on line 11, what is .done  ?
// on line 11, what is function ?
// on line 11, what is data ?

