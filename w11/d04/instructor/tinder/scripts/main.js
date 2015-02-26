var $userInfo;

$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  $userInfo    = $(".user-info");
  var $xButton     = $(".x"),
      $heartButton = $(".heart");

  // gets user template source as a string and uses it to create templating function
  var templateSource = $("#tinder-template").html();
  genUserHTML = _.template(templateSource);

  // gets match template source as a string and uses it to create templating function
  var matchTemplateSource = $("#match-template").html();
  var genMatchHTML = _.template(matchTemplateSource);

  var currentUser = {};
  var matchHTML;

  var getNewUser = function(){
    $.ajax({
      url: "http://api.randomuser.me",
      type: "GET",
      dataType: "json"
    }).done(function(data){
      var user = data["results"][0]["user"];
      var firstName = user.name.first;
      var pictureURL = user["picture"]["large"];
      currentUser.image_url = pictureURL;
      currentUser.name = firstName;
      currentUser.age = 31;
      newTinderHTML = genUserHTML(currentUser);
      $userInfo.html(newTinderHTML);
      matchHTML = genMatchHTML(currentUser);
    });
  };

  getNewUser();

  $xButton.on("click", getNewUser);

  $heartButton.on("click", function(){
    $(".matches-container").append(matchHTML);
    getNewUser();
  });





});
