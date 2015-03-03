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

  //adding class zero here doesn't change the element added to layout. find out why
  // $(accountHTML).find(".balance").addClass("zero");
  // $(accountHTML).find(".button").on("click", function(e){
  //   console.log("button clicked!");
  // });
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

  var $balances = $(".balance");

  [].forEach.call($balances, function(balance){
    var amount = parseInt( $(balance).text().replace("$", "") );
    if( amount === 0)
      $(balance).addClass("zero");
  });

  $(document).find(":button").on("click", function(e){
    console.log( this.value);

  });


});


