// define application namespace (object) to keep global namespace clean
var todoApp = {};

// define model action and view action namespaces (properties as objects)
todoApp.model         = {};
todoApp.view          = {};
todoApp.view.handlers = {}; // these "handlers" are view event handlers that 
                            // call model functions

// once the page is loaded...
window.addEventListener("load", function() {

  // cache references to necessary DOM elements
  todoApp.view.$newTaskForm = $(".new-task form");
  todoApp.view.$newTaskDesc = $("#new-task");
  todoApp.view.$taskList    = $('.task-list');

  // add event handlers
  todoApp.view.$newTaskForm.on("submit", function(event) {
    event.preventDefault();

    var description = todoApp.view.$newTaskDesc.val();
    
    todoApp.view.$newTaskDesc.val("");

    todoApp.model.addNewTask(description);
  });
});

// ********************************* MODEL ********************************* //

// create connection to remote Firebase and add listeners
todoApp.model.firebaseDataRef = new Firebase("https://todoapp-pj.firebaseio.com");
todoApp.model.firebaseDataRef.on("child_added", function(snapshot) {
  // console.log("child added");
  var taskId      = snapshot.key(),
      description = snapshot.child("description").val(),
      complete    = snapshot.child("complete").val();

  todoApp.view.addNewTask(taskId, description, complete);
});
todoApp.model.firebaseDataRef.on("child_removed", function(snapshot) {
  // console.log("child removed");
  var taskId = snapshot.key();

  todoApp.view.removeTask(taskId);
});
todoApp.model.firebaseDataRef.on("child_changed", function(snapshot) {
  // console.log("child changed");
  var taskId   = snapshot.key(),
      complete = snapshot.child("complete").val();

  todoApp.view.setTaskComplete(taskId, complete);
});
todoApp.model.firebaseDataRef.on("child_moved", function(snapshot) {
  // console.log("child moved");
});
todoApp.model.firebaseDataRef.on("value", function(snapshot) {
  // console.log("value");
});

// define model actions (wrap Firebase interaction)
todoApp.model.addNewTask = function(description) {
  var dataRef = todoApp.model.firebaseDataRef.push({
    description: description,
    complete:    false
  });
  return dataRef.key();
};
todoApp.model.setTaskComplete = function(taskId, complete) {
  return todoApp.model.firebaseDataRef.child(taskId).child("complete").set(!complete);
};
todoApp.model.removeTask = function(taskId) {
  return todoApp.model.firebaseDataRef.child(taskId).remove();
};

// ********************************** VIEW ********************************* //

// define view actions
todoApp.view.createTask = function(taskId, description, complete) {
  var el = $('<div class="task">')
           .attr('data-taskid', taskId)
           .append($('<input type="checkbox">'))
           .append($('<span class="task-description">'+description+'</span>'))
           .append($('<span class="remove">X</span>'));
  
  if (complete) {
    el.addClass("complete");
    el.find('input[type="checkbox"]').prop("checked", true);
  }

  el.on("change", "input[type=checkbox]", todoApp.view.handlers.setTaskComplete);
  el.on("click", ".remove",               todoApp.view.handlers.removeTask);

  return $(el);
}
todoApp.view.addNewTask = function(taskId, description, complete) {
  var $task = todoApp.view.createTask(taskId, description, complete);
  
  todoApp.view.$taskList.append($task);
  return $task;
}
todoApp.view.setTaskComplete = function(taskId, complete){
  var $task     = todoApp.view.get$TaskFromID(taskId),
      $checkbox = $task.find('input[type="checkbox"]');

  if (complete) {
    $task.addClass("complete");
    $checkbox.prop("checked", true);
  } else {
    $task.removeClass("complete");
    $checkbox.removeProp("checked");
  }
  return $task;
}
todoApp.view.removeTask = function(taskId) {
  $('*[data-taskid="'+taskId+'"]').remove();
  return true;
}
todoApp.view.get$TaskFromID = function(taskId) {
  return $('*[data-taskid="'+taskId+'"]');
}
todoApp.view.getIDFromTask = function(task) {
  return $(task).parent().data("taskid");
}
todoApp.view.isTaskComplete = function(taskId) {
  return todoApp.view.get$TaskFromID(taskId).hasClass("complete");
}
todoApp.view.handlers.setTaskComplete = function(event) {
  event.preventDefault(); event.stopPropagation();

  var taskId   = todoApp.view.getIDFromTask(event.target),
      complete = todoApp.view.isTaskComplete(taskId);

  todoApp.model.setTaskComplete(taskId, complete);
}
todoApp.view.handlers.removeTask = function(event) {
  var taskId = todoApp.view.getIDFromTask(event.target);

  todoApp.model.removeTask(taskId);
}