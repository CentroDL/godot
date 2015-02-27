$(document).ready(function(){

  // var stubData = {
  //   name: "Afghanistan",
  //   annihilated: false,
  //   language: "Persian",
  //   population: 29121286,
  //   area_in_sq_km: 647500,
  //   flag_image: "http://www.geonames.org/flags/x/af.gif"
  // }
  // createCountry(stubData);

  // for(var i=1; i < countryCount+1; i++){
  //   $.ajax({
  //     url: '/countries/' + i,
  //     type: 'get',
  //     dataType: 'json'
  //   }).done(function(countryData){
  //     createCountry(countryData);
  //   });
  // }

  $(".countries-list li").click(function(e){
      $.ajax({
        url: '/countries/' + $(e.target).data("id"),
        type: 'get',
        dataType: 'json'
      }).done(function(countryData){
        console.log("got data from /countries/" + $(e.target).data("id"))
        createCountry(countryData);
        registerCheckbox(countryData);
      });
  });


});

var createCountry = function(country){

  countryTemplateSource = $("#country-template").html()
  genCountryHTML = _.template(countryTemplateSource);
  countryHTML = genCountryHTML(country);
  $("#country-main").html(countryHTML);
}

var registerCheckbox = function(country){
  $("#annihilate-checkbox").click(function(e){
      console.log("tries to hide checkbox");
      $(e.target).parent().hide();

    // country.annihilated = true;
    // debugger
    $.ajax({
      url: '/countries/' + country.id,
      type: 'put',
      dataType: 'json',
      data: { country: { annihilated: true } }
    }).done(function(data){
      $("li[data-id=" +country.id + "]").addClass("annihilated");
    });
  });
}
