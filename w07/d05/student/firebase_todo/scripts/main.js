console.log('main.js loaded');

var taskList = {};

taskList["counter"] = 0;
// $("window").on("load", function(){});

// 1. Create a new task (createTask). Make sure to give the new task a unique ID! Also, have the function return that new unique ID. (Remember how we did this with Redis?)
var createTask = function( description, complete){
  var uniqueID = "task" + taskList.counter;
  taskList.uniqueID = { complete: complete, description: description };
  taskList.counter++;// $redis.incr("task:counter");
  return uniqueID;
};

// var firebase = new Firebase();

// var createTask = function(description, complete){
//   var snapshot = firebase.push({complete: complete, description: description});
//   var uniqueID = snapshot.key();
//   return uniqueID;
// };

// 2. Mark a task as complete or as incomplete (toggleComplete), given the task's unique ID.
var toggleComplete = function(id){
  taskList[id].complete = !taskList[id].complete;
};

// 3. Remove a task (removeTask).
var removeTask = function(id){
  delete taskList.id;
};

// 4. List tasks (listTasks). This should log to the console!
var listTasks = function(){
  for(var task in taskList){
    console.log(task);
  }
};
