function Lamb(){
  this.living = true;
  this.bagsOfWool = 3;
}

Lamb.prototype.say = function(){
  if (this.living) {
    return 'baaa';
  }
}

Lamb.prototype.silence = function(){
  this.living = false;
}

Lamb.prototype.wool = function(){
  return this.bagsOfWool + " bags full";
}

Lamb.prototype.hasWool = function(){
  return this.bagsOfWool > 0
}

Lamb.prototype.sheer = function(){
  if ( this.hasWool() ){
    this.bagsOfWool = this.bagsOfWool - 1;
  }
}
