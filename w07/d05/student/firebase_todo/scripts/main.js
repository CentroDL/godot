console.log('main.js loaded');

var taskList = {};

taskList["counter"] = 0;

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
var createTaskEl = function(description, id, complete){

  var div = $("<div>").addClass("task").attr("data-taskid", id);
  //ask why prop() doesnt show anything in tag
  $("<input>").attr("type", "checkbox")
              .prop("checked", complete)
              .appendTo(div);
  $("<span>").addClass("task-description")
             .text(description).appendTo(div);
  $("<span>").addClass("remove")
             .text("X")
             .appendTo(div);
  return div;
};

 // Write a function to add a task element to the DOM (addTaskEl)! It should take all the same inputs as createTaskEl, call createTaskEl and save its result, and then add it to the "task-list" on the DOM.
var addTaskEl = function(description, id, complete){
  var task = createTaskEl( description, id, complete);
  $(".task-list").append(task);
  return task;
};

// 4. Toggle the class "complete" on the task element (<div>). You can grab the correct element by finding the right data attribute (toggleTaskElComplete).
// $('*[data-customerID="22"]');
var toggleTaskElComplete = function(id){
  $('*[data-taskid="'+id.data+'"]').toggleClass("complete");
  console.log("toggled " + id.data);
};


// 5. Remove the element based on the task ID (removeTaskEl).
var removeTaskEl = function(id){
  // debugger;
  $('*[data-taskid="'+id.data+'"]').remove();
  console.log( "removed id " + id.data);
};

var newTask = function(description, id, complete){
  var task = addTaskEl( description, id, complete);
  // $(task).children()[0].on("click", id, toggleTaskElComplete );
  // $(task).children()[2].on("click", id, removeTaskEl);

  task.on("click", "input", id, toggleTaskElComplete );
  task.on("click", ".remove", id, removeTaskEl );
  return true;
};

// Now, we need to add a click event handler to the "new-task" form's submit event that:
// stops the form's submission,
// gets the description from the input,
// creates the new task in the model (saving the ID for the next step),
// and adds the new task to the DOM (calls newTask).
// Note: make sure that this listener is added after the DOM content is loaded!
$("window").on("load", function(){

  $("#new-task").on("click", function(e){
    e.stopPropagation();
    var input = e.target.val();
    var id = createTask( input, false);
    newTask( input, id, false);
  });

});









