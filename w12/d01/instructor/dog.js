console.log('woof! Dog "class" loaded!');

var dogApp = {};
dogApp.views = {};

dogApp.views.Dog = function(name, parentDiv) {
  this.name = name;
  this.age  = 0;
  this.$parentDiv = parentDiv;
}

// // given the above constructor function,
// // lassie = new Dog('Lassie') means:
// lassie = Object.create(Dog.prototype);
// var name = 'Lassie';
// lassie.name = name;
// lassie.age  = 0;

$(document).ready(function() {
  dogApp.views.Dog.prototype = {
    $template:  $('#dog-template'),
    bark: function() {return 'bark bark!';},
    sit: function() {return 'sits';},
    save: function(boysName) {return 'woof (ok, ill save ' + boysName + ')!';}
  };

  dogApp.views.Dog.prototype.render = _.template(dogApp.views.Dog.prototype.$template.html())

  dogApp.views.Dog.prototype.addToPage = function() {
    console.log(this);
    var stringOfHtml = this.render({name: this.name, age: this.age});
    $(stringOfHtml).appendTo(this.$parentDiv);
  }

  // var stringOfHtml = generateNewTemplate({name: 'Lassie', age: 0});
  // $(stringOfHtml).appendTo($contentDiv);
  // $(  generateNewTemplate({name: 'Lassie', age: 0})).appendTo($contentDiv);
})