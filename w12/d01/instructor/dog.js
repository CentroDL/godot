console.log('woof! Dog "class" loaded!');

var app = {};

app.Dog = function(name, parentDiv) {
  this.name = name;
  this.age  = 0;
  this.$parentDiv = parentDiv;
}

app.Dog.prototype = {
  bark: function() {return 'bark bark!';},
  sit: function() {return 'sits';},
  save: function(boysName) {return 'woof (ok, ill save ' + boysName + ')!';}
};

app.Dog.prototype.addToPage = function() {
    var stringOfHtml = this.render({name: this.name, age: this.age});
    console.log(this)
    $(stringOfHtml)
      .appendTo(this.$parentDiv)
      .find('button').on('click', function() {
        // debugger
        // alert(this.bark());
        alert(app.Dog.prototype.bark())
      });
      // }.bind(this));
  }

$(document).ready(function() {
  app.Dog.prototype.$template = $('#dog-template');
  app.Dog.prototype.render    = _.template(app.Dog.prototype.$template.html())
});