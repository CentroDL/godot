
var grossToNumber = function(gross){
  return parseInt(gross.replace('$', '').split(",").join(''));
}
