console.log('main.js loaded');

var taskList = {};
taskList["counter"] = 0;

var TodoApp = new Firebase("https://blazing-inferno-3859.firebaseio.com/");

var createTask = function(description, complete){
  var snapshot = firebase.push( {complete: complete, description: description} );
  var uniqueID = snapshot.key();
  return uniqueID;
};

var toggleComplete = function(id){
  firebase.child(id).complete = !firebase.child(id).complete;
};

var removeTask = function(id){
  firebase.child(id).remove(function(){ console.log("removed entry " + id + "from firebase.")});
};

var listTasks = function(){
  for(var task in taskList){
    console.log(task);
  }
};

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

var addTaskEl = function(description, id, complete){
  var task = createTaskEl( description, id, complete);
  $(".task-list").append(task);
  return task;
};

var toggleTaskElComplete = function(id){
  $('*[data-taskid="'+id.data+'"]').toggleClass("complete");
  console.log("toggled " + id.data);
};

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

$("window").on("load", function(){

  $("form").on("submit", function(e){
    e.preventDefault();
    var input = $("#new-task").val();
    var id = createTask( input, false);
    newTask( input, id, false);
  });

});









