// API Docs at:
// https://developer.spotify.com/technologies/web-api/search/

// endpoint to hit: http://ws.spotify.com/search/1/track.json?q=foo

$(document).ready(function(){

  var form       = $("form");

  form.on("submit", function(e){
    e.preventDefault();
    var searchTerm = $("#search-keyword").val();
    $.ajax({
      url: "http://ws.spotify.com/search/1/track",
      dataType: "json",
      type: "GET",
      data: { q: searchTerm }
    }).done(function(data){
      var songs = data.tracks;
      var html  = '';
      for(var i = 0; i < songs.length; i++){
        var songName = songs[i].name;
        var href     = songs[i].href;
        html += "<li><a href=\"" + href + "\">" + songName + "</a></li>";
      }

      $("#results").html(html);
    });

  });


});

