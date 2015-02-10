$(document).ready(function(){
  console.log("the document has loaded");

  $labOne   = $(".top-left");
  $labTwo   = $(".top-center");
  $labThree = $(".top-right");
  $bglOne   = $(".bottom-left");
  $bglTwo   = $(".bottom-center");
  $bglThree = $(".bottom-right");
  $bg = $(".bg");

  $(window).on("scroll", function(){
    console.log("The user is scrolling!");
    $amountScrolled = $(window).scrollTop();
    console.log($amountScrolled);

    $labOne.css("left", $amountScrolled);
    $labTwo.css("right", $amountScrolled);

    $bg.css("background-position", $amountScrolled * 0.7);

  });

}); // on page load
