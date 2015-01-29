var bang = function(event){
  console.log("BANG!");
};

// once the DOM has loaded
$(document).ready(function(){
  // attach event listener
  $(window).on("mousemove", bang);

});
