$(document).ready(function(){
  console.log("document ready");

  // sets the day's date at the bottom of viewport
  var $date = $(".date");
  var currentDateString = moment().format('dddd, MMMM Do');
  $date.text(currentDateString);


  var button = $(".pure-button");

  button.on("click", function(e){
    e.preventDefault();
    var desiredCity = $(".pure-input-rounded").val();
    $.ajax({
      url:"http://api.openweathermap.org/data/2.5/weather",
      type: "GET",
      data: { q: desiredCity },
      dataType: "json"
    }).done(function(data){
      var cityName = data.name;
      var temp     = data.main.temp;
      $("#forecast").text("The temperature in " + cityName + " is: " + temp + " degrees Kelvin");
    });

  });


});
