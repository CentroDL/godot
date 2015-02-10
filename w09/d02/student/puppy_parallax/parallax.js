var $bg,
    $topLeft,
    $topRight,
    $topCenter,
    $bottomCenter,
    $bottomLeft,
    $bottomRight,
    scroll;

$(window).on("load", function(e){
  $bg           = $(".bg");
  $topLeft      = $(".top-left");
  $topRight     = $(".top-right");
  $topCenter    = $(".top-center");
  $bottomCenter = $(".bottom-center");
  $bottomLeft   = $('.bottom-left');
  $bottomRight  = $('.bottom-right');
})


$(window).scroll( function(){

  scroll = $(window).scrollTop();

  $bg.css( "background-position", scroll * 0.7 );

  $topLeft.css(   "top", scroll/100 );
  $topCenter.css( "transform", "rotateX(" + scroll + "deg)");
  $topRight.css(  "transform", "rotateY(" + scroll + "deg)");

  // $bottomLeft.rotate( scroll );
  $bottomLeft.css(   "top", scroll/5 );
  $bottomLeft.css(   "transform",  "rotate(" + scroll + "deg)" );
  $bottomCenter.css( "top", scroll/-20 );
  $bottomRight.css(  "top", scroll/-5 );
});

