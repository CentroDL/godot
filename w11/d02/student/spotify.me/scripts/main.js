// API Docs at:
// https://developer.spotify.com/technologies/web-api/search/

$(document).ready(function(){

  var form = $("form");

  form.submit(function(e){
    e.preventDefault();
    var searchTerm = $("#search-keyword").val();
    $.ajax({
      url: "http://ws.spotify.com/search/1/track",
      dataType: "json",
      type: "get",
      data: {
        q: searchTerm
      }
    }).done(function(data){
      var html = "";
      var songs = data.tracks;
      var songName, href;
      for(var i=0, len=songs.length; i < len; i++){
          songName = songs[i].name;
          href = songs[i].href;
          html += "<li><a href=\""+ href + "\">"+songName+"</a></li>";
      }
      $("#results").html(html);
    });

  });
});

