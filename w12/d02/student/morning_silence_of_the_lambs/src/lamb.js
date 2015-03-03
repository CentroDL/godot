var Lamb = function(){
  this.silenced = false;
  this.wools = 3;
};

Lamb.prototype = {
  silence: function(){
   this.silenced = true;
 },
  hasWool: function(){ return this.wools > 0;}
}

Lamb.prototype.say = function(){
             if(!this.silenced)
               return "baaa";
           }

Lamb.prototype.wool = function(){
  return this.wools + " bags full";
}

Lamb.prototype.sheer = function(){
  if( this.hasWool() )
   this.wools -= 1;
}


