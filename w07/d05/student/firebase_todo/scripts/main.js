console.log('main.js loaded');

var taskList = {};

taskList["counter"] = 0;
// $("window").on("load", function(){});

// // 1. Create a new task (createTask). Make sure to give the new task a unique ID! Also, have the function return that new unique ID. (Remember how we did this with Redis?)
// var createTask = function( description, complete){
//   var uniqueID = "task" + taskList.counter;
//   taskList.uniqueID = { complete: complete, description: description };
//   taskList.counter++;// $redis.incr("task:counter");
//   return uniqueID;
// };

// var firebase = new Firebase();
var TodoApp = new Firebase("https://blazing-inferno-3859.firebaseio.com/");

var createTask = function(description, complete){
  var snapshot = firebase.push( {complete: complete, description: description} );
  var uniqueID = snapshot.key();
  return uniqueID;
};

// Rewrite toggleComplete to work with Firebase using Firebase#child to get the child reference, and Firebase#set to change its value. For now you can have it just force complete to be false.
var toggleComplete = function(id){
  firebase.child(id).complete = !firebase.child(id).complete;
};

//Rewrite removeTask to work with Firebase using Firebase#child and Firebase#remove().
var removeTask = function(id){
  firebase.child(id).remove(function(){ console.log("removed entry " + id + "from firebase.")});
};

// 4. List tasks (listTasks). This should log to the console!
var listTasks = function(){
  for(var task in taskList){
    console.log(task);
  }
};

// <div class="task">
//   <input type="checkbox">
//   <span class="task-description">Task description here.</span>
//   <span class="remove">X</span>
// </div>
var createTaskEl = function(description, complete){
  var div = $("<div>").addClass("task");
  $("<input>").attr("type", "checkbox").prop("checked", complete).appendTo(div);
  $("<span>").addClass("task-description").text(description).appendTo(div);
  $("<span>").addClass("remove").text("X").appendTo(div);
  return div;
};






