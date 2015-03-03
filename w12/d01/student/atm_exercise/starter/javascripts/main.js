var AtmView = function(type, id) {
  this.number = id;
  this.type = type;
  this.amount  = 0;
}

AtmView.prototype = {
  $template: $('#account-template'),
};

AtmView.prototype.render = function(target){

  var generateAtmViewHTML = _.template( AtmView.prototype.$template.html() );
  var accountHTML =  generateAtmViewHTML( this );

  var balanceDiv = $(accountHTML).find(".balance")[0];
  debugger
  $(accountHTML).appendTo($(target));
}

$(document).ready(  function(){
  console.log("JS Loaded!");

  var checking = new AtmView("checking", 1);
  var savings  = new AtmView ("savings", 2);

  var accounts = [ checking, savings ];

  accounts.forEach( function(account){
    console.log("making account");
    account.render("#content");
  });

});


