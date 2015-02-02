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

/* PART 4 */

var createTaskEl = function(taskID, description, complete) {
  var el = $('<div class="task">')
           .attr('data-taskid', taskID)
           .append($('<input type="checkbox">'))
           .append($('<span class="task-description">'+description+'</span>'))
           .append($('<span class="remove">X</span>'));
  if (complete) {
    el.addClass("complete");
    el.find('input[type="checkbox"]').prop("checked", true);
  }
  return el;
}

var addTaskEl = function(taskID, description, complete) {
  var $taskList = $('.task-list');
  var taskEl    = createTaskEl(taskID, description, complete);
  $taskList.append(taskEl);
  return taskEl;
}

var toggleTaskElComplete = function(taskID){
  $('*[data-taskid="'+taskID+'"]').toggleClass("complete");
}

var removeTaskEl = function(taskID) {
  $('*[data-taskid="'+taskID+'"]').remove();
}

/* PART 5 */

var newTask = function(taskID, description, completed) {
  // add the element to the DOM
  var taskEl = addTaskEl(taskID, description, completed);

  // add listeners to the element for remove and complete events
  taskEl.on("change", "input[type=checkbox]", completeTask);
  taskEl.on("click", ".remove", killTask);
}

// window.addEventListener("load", function() {
//   // after DOM loaded, add event listener to the save button's form
//   $(".new-task form").on("submit", function(event) {
//     console.log("form submit called!");

//     // stop the form submission
//     event.preventDefault();

//     // get description
//     var description = $("#new-task").val();
//     $("#new-task").val("");

//     // create the new task in the model (Firebase)
//     var taskID = createTask(description);

//     // create the new task in the DOM
//     newTask(taskID, description, false);
//   });
// }); // be sure to comment this out when you get to part 6...

var killTask = function(event) {
  // get the taskID of the element
  var taskID = $(event.target).parent().data("taskid");

  // remove the model task
  removeTask(taskID);

  // remove the DOM element
  removeTaskEl(taskID);
}

var completeTask = function(event) {
  // get the taskID of the element
  var taskID = $(event.target).parent().data("taskid");

  // toggle complete on the model task
  toggleTaskComplete(taskID);

  // toggle complete on the DOM element
  toggleTaskElComplete(taskID);
}

// rewrite the toggleTaskComplete model function to draw data from the DOM
var toggleTaskComplete = function(taskID) {
  var complete = $('*[data-taskid="'+taskID+'"]').hasClass("complete");
  fireStream.child(taskID).child("complete").set(!complete);
};

/* PART 6 */

// listen for add children events from the firebase stream
fireStream.on("child_added", function(snapshot) {
  console.log("child_added fired!");

  // get data from the callback's "snapshot"
  var taskID      = snapshot.key();
  var description = snapshot.child("description").val();
  var complete    = snapshot.child("complete").val();

  // create the task in the model and as an element
  newTask(taskID, description, complete);
});

// rewrite the old new task button callback to not create the element, since
// that is created by the firebase event that it triggers
window.addEventListener("load", function() {
  // after DOM loaded, add event listener to the save button's form
  $(".new-task form").on("submit", function(event) {
    console.log("save called!");
    event.preventDefault();

    // get description
    var description = $("#new-task").val();
    $("#new-task").val("");

    // create the new task in the model (Firebase)
    var taskID = createTask(description);
  });
});

/* PART 7 */

fireStream.on("child_removed", function(snapshot) {
  console.log("child_removed fired!");

  // get data from the callback's "snapshot"
  var taskID = snapshot.key();

  // remove the DOM element
  removeTaskEl(taskID);
});

fireStream.on("child_changed", function(snapshot) {
  console.log("child_changed fired!");

  // get data from the callback's "snapshot"
  var taskID   = snapshot.key();
  var complete = snapshot.child("complete").val();

  // toggle complete on the DOM element
  toggleTaskElComplete(taskID, complete);
});

// move the DOM manipulation from the kill and complete task functions to
// the event listeners
var killTask = function(event) {
  // get the taskID of the element
  var taskID = $(event.target).parent().data("taskid");

  // remove the model task
  removeTask(taskID);
}
var completeTask = function(event) {
  event.preventDefault(); event.stopPropagation();

  // get the taskID of the element
  var taskID = $(event.target).parent().data("taskid");

  // toggle complete on the model task
  toggleTaskComplete(taskID);
}

// add an "optional" complete status to set the checkbox with
var toggleTaskElComplete = function(taskID, complete){
  var $task = $('*[data-taskid="'+taskID+'"]');
  var $checkbox = $task.find('input[type="checkbox"]');

  // always toggle the class...
  $task.toggleClass("complete");

  // if we passed a complete status, set it!
  if (complete !== undefined) {
    $checkbox.prop("checked", complete);
  }
}

/* PART 8 */

// // here is an example of how the todoApp namespace object would work
// var todoApp = {};
// todoApp.createTask         = createTask;
// todoApp.toggleTaskComplete = toggleTaskComplete;
// todoApp.removeTask         = removeTask;
// todoApp.listTasks          = listTasks;
// // todoApp.taskList           = taskList; // this will break all current
//                                           // references, but is good practice...
//                                           // Implement, but make sure your code
//                                           // works!
