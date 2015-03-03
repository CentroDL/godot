var turtleData;

// returns a constructor function
var ReporterModel = Backbone.Model.extend({
    url: "http://localhost:3000/reporter"
});

// here, we instantiate a new ReporterModel
var april = new ReporterModel();

april.get("name")  // => undefined (nothing there)

// makes GET request to specified URL and sets mirrored attributes
april.fetch()

april.get("name") // => "April O'Neil"



var RatModel = Backbone.Model.extend({
  url: "rat"
});

var splinter = new RatModel();

splinter.fetch();

debugger
$(document).ready(function(){

});

