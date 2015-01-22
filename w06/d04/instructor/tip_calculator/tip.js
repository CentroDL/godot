console.log("loaded tips.js");

// Grab the elements on the page
var amountControl = document.querySelector("#amount");
var taxControl = document.querySelector("#tax");
var totalControl = document.querySelector("#total");

var calculateTotalBill = function(){
  // assign .2 to tip
  var tip = 0.2;
  // get the amount from the input and convert amount to float
  var amount = parseFloat(amountControl.value);
  // get the tax and convert tax to float
  var tax = parseFloat(taxControl.value);
  // assign tipAmount to amount * tip
  var tipAmount = amount * tip;
  // return tipAmount + (amount * tax) + amount
  var total = tipAmount + (amount * tax) + amount;
  // Change the text to the total amount
  totalControl.textContent = total;
}

var form = document.querySelector("form");
// handle form submission
var formSubmitHandler = function(event) {
  // prevent the default behavior of the form
  event.preventDefault();
  console.log("I will not be submitted to this");
  calculateTotalBill();
}
// add an event listener
form.addEventListener("submit", formSubmitHandler);
