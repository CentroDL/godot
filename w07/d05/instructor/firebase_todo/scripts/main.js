console.log('main.js loaded');

// PART 1
// (model layer)
// - tasks
//   - task completion status
//   - task description (text)

// 1. Create an object to hold our application's data.
// var taskList = {};

// // 2. Enter into the object the data represented in the image above.
// taskList["task1"] = {complete: false, description: "Walk the dog."};
// taskList["task2"] = {complete: true,  description: "Do homework."};
// taskList["task3"] = {complete: false, description: "Cash checks at the bank."};
/* PART 1 */

// var taskList = {
//   counter: 4,
//   task1: {description: "Walk the dog.", complete: false},
//   task2: {description: "Do homework.",  complete: true},
//   task3: {description: "Cash checks at the bank.", complete: false}
// };

// Why not use an Array? Are indices unique identifiers?

/* PART 2 */

// var taskList = {
//   counter: 4,
//   task1: {description: "Walk the dog.", complete: false},
//   task2: {description: "Do homework.",  complete: true},
//   task3: {description: "Cash checks at the bank.", complete: false}
// };

// var createTask = function(description) {
//   var newID = "task" + taskList.counter;
//   taskList.counter++;
//   taskList[newID] = {description: description, complete: false};
//   return newID;
// };
// var toggleTaskComplete = function(taskID) {
//   taskList[taskID].complete = !taskList[taskID].complete;
// };
// var removeTask = function(taskID) {
//   delete taskList[taskID];
// };
// var listTasks  = function() {
//   _.each(taskList, function(task, uid) {
//     if (uid != "counter") {
//       var complete = task.complete ? "complete" : "not complete";
//       console.log(uid + ": " + task.description + " (" + complete + ")");
//     }
//   });
// };

/* PART 3 */

var fireStream = new Firebase("https://todoapp-pj.firebaseio.com");

var createTask = function(description) {
  var dataRef = fireStream.push({description: description, complete: false});
  var newID = dataRef.key();
  return newID;
};
var toggleTaskComplete = function(taskID) {
  fireStream.child(taskID).child("complete").set(true);
};
var removeTask = function(taskID) {
  fireStream.child(taskID).remove();
};
