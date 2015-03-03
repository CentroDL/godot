var LambView = function(lamb){
  this.model = lamb;
}

LambView.prototype.render = function(){
  var lambText,
      lambClass;
  if (this.model.say()){
    lambText = this.model.say();
    lambClass = 'lamb';
  } else {
    lambText = "...";
    lambClass = 'silent lamb';
  }
  return '<p class="' + lambClass + '">'+ lambText + '</p>'
}
