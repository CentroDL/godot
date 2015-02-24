console.log('github_api loaded');


$(document).ready(function(){

  $(".search-form").submit(function(e){

    e.preventDefault();
    var username = $(".username-field").val();
    $.ajax({
      url: "https://api.github.com/users/" + username,
      type: "get",
      dataType: "json"
    }).done(function(data){
      // debugger
      $(".user-info").text(data.login);
    });

  });


});
