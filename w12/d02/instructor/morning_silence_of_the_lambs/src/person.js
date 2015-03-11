function Person(options) {
  var options = options || {};
  this.gender = options['gender'];
  this.items = [];
  this.moist = false;
}

Person.prototype.take = function(item) {
  this.lotion = item;
}

Person.prototype.isLotioned = function() {
  return this.moist;
}

Person.prototype.applyLotion = function() {
  if ( this.hasLotion() ) {
    this.lotion.squeeze();
    this.moist = true;
  } else {
    throw "no lotion";
  }
}

Person.prototype.hasLotion = function() {
  return this.lotion !== null;
}

Person.prototype.place = function(item, basket) {
  this.lotion = null;
  basket.push(item);
}

function Lotion(options) {
  var options = options || {};
  this.brand = options['brand'];
  this.ounces = options['ounces'];
}

Lotion.prototype.squeeze = function() {
  return this.ounces -= 5;
}

function Basket(options) {
  var options = options || {};
  this.material = options['material'];
  this.contents = options['contents'];
}

Basket.prototype.add = function(item) {
  this.contents.push(item);
}

Basket.prototype.contains = function(item) {
  return this.contents.indexOf(item) >= 0;
}
