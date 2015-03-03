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

AtmView.prototype.deposit = function(){
  console.log("DEPOSIT CALLED");
}
AtmView.prototype.withdraw = function(){
  console.log("WITHDRAW CALLED");
}

$(document).ready(  function(){
  console.log("JS Loaded!");

  checking = new AtmView("checking", 1);
  savings  = new AtmView ("savings", 2);

  accounts = [ checking, savings ];

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

  $(document).find(":button").click(function(e){

      $parent = $(this.parentElement);
      parentID = parseInt( $parent.attr("id").replace("account", "") );

      accounts.forEach(function(account){
        if(parentID === account.number){
          targetAccount = account;
          // console.log("matched account to " + account.type + "account");
          transactionAmount = parseInt( $( "#" + account.type + "_amount").val() );
          // console.log( transactionAmount);
        }
      });

      if( this.value === "Deposit"){
        targetAccount.amount += transactionAmount;
        targetAccount.render();
        $parent.find( "#" + targetAccount.type + "_balance" ).text("$"+targetAccount.amount);
      } else{
        targetAccount.amount -= transactionAmount;
        targetAccount.render();
        $parent.find( "#" + targetAccount.type + "_balance" ).text("$"+targetAccount.amount);
      }
  });


});


