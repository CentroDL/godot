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

Dog.prototype = {
  bark: function() {return 'bark bark!';},
  sit: function() {return 'sits';},
  save: function(boysName) {return 'woof (ok, ill save ' + boysName + ')!';}
};

