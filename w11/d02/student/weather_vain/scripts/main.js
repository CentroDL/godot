$(document).ready(function(){
  console.log("document ready");

  // sets the day's date at the bottom of viewport
  var $date = $(".date");
  var currentDateString = moment().format('dddd, MMMM Do');
  $date.text(currentDateString);

  $(".pure-form").submit( function(e){
    e.preventDefault();

    $.ajax({
      url: "http://api.openweathermap.org/data/2.5/weather",
      type: "get",
      data: {     //q: e.target.children[0].value,
              q: $(".pure-input-rounded").val(),
              units: "imperial"
            },
      dataType: 'json'
    }).done(function(data){
      // alert( "API call searched for " +  e.target.children[0].value );
      $("#forecast").text("In " + data.name + " it's " + data.main.temp + " degrees Farenheit");
    });

  });//on submit

});//doc on ready
