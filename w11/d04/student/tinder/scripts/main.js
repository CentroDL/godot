$(document).ready(function(){
  console.log("main.js linked");

  // caches reference to commonly needed DOM elements
  var $userInfo    = $(".user-info"),
      $xButton     = $(".x"),
      $heartButton = $(".heart"),
      $matchesContainer = $(".matches-container");

  var getNewUser = function(){
    $.ajax({
      url: "http://api.randomuser.me/",
      type: "get",
      dataType: "json"
    }).done(function(data){
      var userInfo = {
        name: data.results[0].user.name.first,
        age: Math.floor(Math.random()*25) + 23 ,
        image_url: data.results[0].user.picture.medium
      };
      tinderHTML = generateTinderHTML(userInfo);
      $userInfo.html(tinderHTML);
    }).fail(function(error){
      console.log("button error fired ");
      console.log(error);
    });
  };

  var setMatch = function(){
    console.log("add like to matches");

    var user = {
      name:      $userInfo.find("p").text().split(", ")[0],
      image_url: $userInfo.find("img").attr("src")
    }

    var matchTemplateSource = $("#match-template").html();
    var generateMatchHTML = _.template(matchTemplateSource);
    var matchHTML = generateMatchHTML(user);

    $matchesContainer.append(matchHTML);

  }; // set match

  //name, age, image_url
  var tinderTemplateSource = $("#tinder-template").html();
  var generateTinderHTML   = _.template(tinderTemplateSource);
  var tinderHTML           = generateTinderHTML({ name: "Dan", age: 62, image_url:"http://www.nndb.com/people/244/000025169/da-sized.jpg"});


  $userInfo.html(tinderHTML);

  $xButton.click(function(e){
    console.log("x clicked");
    getNewUser();
  });// x button click

  $heartButton.click(function(e){
    // debugger
    console.log("heart clicked");
    setMatch();
    getNewUser();
  });//heart button click


});


