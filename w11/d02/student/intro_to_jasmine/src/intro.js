
var sleepIn = function(dayName){


  if (dayName === 'Saturday' || dayName === 'Sunday') {
    return true
  }
  else {
    return false;
  }

}

var pluralize = function(list){

  if(list.length > 1)
  return list.slice(0,-1).join(", ") + " and " + list.pop() ;
  else
    return list.join();
}

var prettyTime = function(seconds){

  var timeString = ''
  var min = Math.floor(seconds / 60);
  var sec = seconds % 60;
  timeString += min + ' minutes';
  if (sec > 0)
    timeString += " and " + sec + " seconds";

  return timeString;

}
