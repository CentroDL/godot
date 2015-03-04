var turtleData;

var ReporterModel = Backbone.Model.extend({
  url: "/reporter"
});

//here we instantiate a new ReporterModel(constructor)
var april = new ReporterModel();

//makes get request to specified URL and set mirrored attributes
april.fetch();

// april.set("name", "April O'Neil");

// april.save();

var RatModel = Backbone.Model.extend({
  url: "/rat"
});

var splinter = new RatModel();

splinter.fetch();

var FootSoldier = Backbone.Model.extend({
  defaults: {
    id:               null,
    height_in_inches: null,
    weight_in_pounds: null,
    created_at:       null,
    updated_at:       null
  }
});

var FootSoldiersCollection = Backbone.Collection.extend({
  url: '/foot_soldiers',
  model: FootSoldier
});

var Villain = Backbone.Model.extend({
  defaults:{
    name:       null,
    species:    null,
    superpower: null,
    created_at: null,
    updated_at: null
  }
});

var VillainModel = Backbone.Collection.extend({
  url: '/villains',
  model: Villain
});

var villains = new VillainModel();
var rocksteady, speciesOfKrang, shredder;

villains.fetch().done(function(){

  rocksteady = villains.get(4);

  speciesOfKrang = villains.get(2).get("species");

  shredder = villains.get(1)

  shredder.set("superpower", "hatred");

  shredder.save();

});


// var footSoldier = new FootSoldier();

// footSoldier.fetch().done(function(){
//   footSoldier.set("image_url", "http://vignette2.wikia.nocookie.net/tmnt/images/2/25/1783491-foot_clan.png/revision/latest?cb=20130717202820");

//   footSoldier.save();

//   console.log("http://vignette2.wikia.nocookie.net/tmnt/images/2/25/1783491-foot_clan.png/revision/latest?cb=20130717202820");

// });



$(document).ready(function(){
});

