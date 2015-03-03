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


var FootSoldier = Backbone.Model.extend({
  url: "/foot_soldiers/1"
});

var footman = new FootSoldier();

footman.fetch().done(function(){
  footman.set("image_url", "http://forums.3dtotal.com/attachment.php?attachmentid=133257&stc=1&d=1235439726")
  footman.save();
  var image_url = footman.get("image_url");
  console.log("The foot soldier's image_url is: " + image_url);
});










