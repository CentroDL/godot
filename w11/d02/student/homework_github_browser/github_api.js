console.log('github_api loaded');


$(document).ready(function(){

  $(".search-form").submit(function(e){

    e.preventDefault();
    var username = $(".username-field").val();
    var displayName;
    var html = "";

    $.ajax({
      url: "https://api.github.com/users/" + username,
      type: "get",
      dataType: "json"
    }).done(function(data){

      var login = data.login;
      var name;
      //wow this hung me up for a while
      if (data.name === "" || typeof data.name === "undefined") {
        name = "None";
        console.log("undefined name");
      }else{
        name = data.name;
        console.log("name defined")
      }

      html += "<h1>" + login + "</h1>";
      html += "<h2>Name: " + name + "</h2>";
      html += "<img src=\"" + data.avatar_url + "\">";
      html += "<p>Number of public gists: " + data.public_gists + "</p>";
      html += "<p>Number of public repos: " + data.public_repos + "</p>";

      // part 2
      $.ajax({
        url: "https://api.github.com/users/" + username + "/repos",
        type: "get",
        dataType: "json"
      }).done(function(repos){
        var links = "";
        for(var i = 0, len = repos.length; i < len; i++ ){
          links += '<li><a href="'+ repos[i].html_url + '">' + repos[i].name +'</li>'
        }

        html += "<ul>Repos:<br/>" + links + "</ul>";
        $(".user-info").html(html);
      });
      // debugger
    });

  });//submit


});//ready
