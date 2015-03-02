var $contentDiv,
    $template,
    generateNewTemplate;

console.log('woof! Dog "class" loaded!');

var Dog = function(name) {
  this.name = name;
  this.age  = 0;
}

// // given the above constructor function,
// // lassie = new Dog('Lassie') means:
// lassie = Object.create(Dog.prototype);
// var name = 'Lassie';
// lassie.name = name;
// lassie.age  = 0;



$(document).ready(function() {
  $contentDiv = $('.content');

  Dog.prototype = {
    $template: $('#dog-template'),
    bark: function() {return 'bark bark!';},
    sit: function() {return 'sits';},
    save: function(boysName) {return 'woof (ok, ill save ' + boysName + ')!';}
  };

  Dog.prototype.render = _.template(Dog.prototype.$template.html());

  Dog.prototype.createHTML = function(){
    return this.render({name: this.name, age: this.age});
  }

  // var stringOfHtml = generateNewTemplate({name: 'Lassie', age: 0});
  // $(stringOfHtml).appendTo($contentDiv);
  // $(  generateNewTemplate({name: 'Lassie', age: 0})).appendTo($contentDiv);
})
