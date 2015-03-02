console.log('main loaded!');

$(document).ready(function() {
  $contentDiv = $('.content');
  ['Kait', 'Lassie', 'Rascal', 'Spot', 'Laika'].forEach(function(dogName) {
    new app.Dog(dogName, $contentDiv).addToPage();
  });
});