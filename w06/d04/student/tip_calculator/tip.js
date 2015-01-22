console.log("Loaded tips.js")

var amountControl = document.querySelector("#amount");
var taxControl    = document.querySelector("#tax");
var totalControl  = document.querySelector("#total");


amountControl.value = 20;
taxControl.value    = 8.75;

var calculateTotalBill = function(){
  var amount = document.querySelector("#amount");
  var tip    = document.querySelector("#tax");
  var total  = document.querySelector("#total");

  var tip = parseFloat(amount) * tip / 100;
  return amount + tip;
};

var h1Tag = document.querySelector("h1");

var greeting = function(){
  alert("Hello!");
}
//registering event listeners
h1Tag.addEventListener("click", greeting);
//totalcontorl

var formSubmitHandler = function(event){
  event.preventDefault();
  console.log("I will not be submitted to this");
}

var form = document.querySelector("form");
form.addEventListener("submit", formSubmitHandler)


