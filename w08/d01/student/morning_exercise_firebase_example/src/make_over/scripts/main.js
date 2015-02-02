// define application namespace (object) to keep global namespace clean
var todoApp = {};

// define model action and view action namespaces (properties as objects)
todoApp.model         = {};
todoApp.view          = {};
todoApp.view.handlers = {}; // these "handlers" are view event handlers that 
                            // call model functions
todoApp.utilities     = {};

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

  // trigger the time description updates at 10 second intervals
  todoApp.utilities.updateTimeDescriptionInterval = setInterval(
    todoApp.utilities.updateTimeDescriptions,
    10000
  );
});

// ********************************* MODEL ********************************* //

// create connection to remote Firebase and add listeners
todoApp.model.firebaseDataRef = new Firebase("https://todoapp-pj.firebaseio.com");
todoApp.model.firebaseDataRef.on("child_added", function(snapshot) {
  // console.log("child added");
  var taskId      = snapshot.key(),
      description = snapshot.child("description").val(),
      complete    = snapshot.child("complete").val(),
      created     = snapshot.child("created").val();

  todoApp.view.addNewTask(taskId, description, complete, created);
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
    complete:    false,
    created:     todoApp.utilities.timestamp()
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
todoApp.view.createTask = function(taskId, description, complete, created) {
  var el, timeDesc;

  timeDesc = todoApp.utilities.describeTimestamp(created);
  el = $('<div class="task">')
       .attr('data-taskid', taskId)
       .append($('<i class="checkbox"></i>'))
       .append($('<span class="task-description">').text(description))
       .append(
         $('<span class="time">').data('created', created)
                                 .text(timeDesc)
       ).append($('<i class="fa fa-times-circle remove"></i>'));
  
  if (complete) {
    el.addClass("complete");
    el.find(".checkbox").addClass("fa fa-check-square-o");
  } else {
    el.find(".checkbox").addClass("fa fa-square-o");
  }

  el.on("click",            todoApp.view.handlers.setTaskComplete);
  el.on("click", ".remove", todoApp.view.handlers.removeTask);

  return $(el);
}
todoApp.view.addNewTask = function(taskId, description, complete, created) {
  var $task = todoApp.view.createTask(taskId, description, complete, created);
  
  todoApp.view.$taskList.prepend($task);
  return $task;
}
todoApp.view.setTaskComplete = function(taskId, complete){
  var $task     = todoApp.view.get$TaskFromID(taskId);

  if (complete) {
    $task.addClass("complete");
    todoApp.view.checkIcon(taskId);
  } else {
    $task.removeClass("complete");
    todoApp.view.uncheckIcon(taskId);
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
todoApp.view.get$CheckboxFromID = function(taskId) {
  return todoApp.view.get$TaskFromID(taskId).find(".checkbox");
}
todoApp.view.getIDFromTask = function(task) {
  return $(task).parent().data("taskid");
}
todoApp.view.isTaskComplete = function(taskId) {
  return todoApp.view.get$TaskFromID(taskId).hasClass("complete");
}
todoApp.view.checkIcon = function(taskId) {
  return todoApp.view.get$CheckboxFromID(taskId)
                     .removeClass("fa-square-o")
                     .addClass("fa-check-square-o");
}
todoApp.view.uncheckIcon = function(taskId) {
  return todoApp.view.get$CheckboxFromID(taskId)
                     .removeClass("fa-check-square-o")
                     .addClass("fa-square-o");
}
todoApp.view.handlers.setTaskComplete = function(event) {
  event.preventDefault(); event.stopPropagation();

  var taskId   = todoApp.view.getIDFromTask(event.target),
      complete = todoApp.view.isTaskComplete(taskId);

  todoApp.model.setTaskComplete(taskId, complete);
}
todoApp.view.handlers.removeTask = function(event) {
  event.stopPropagation();
  var taskId = todoApp.view.getIDFromTask(event.target);

  todoApp.model.removeTask(taskId);
}

// ******************************* UTILITIES ******************************* //

// ISO 8601 timstamp
todoApp.utilities.isoFormat = "YYYY-MM-DDTHH:mm:ssZZ";

todoApp.utilities.timestamp = function() {
  return moment(Date.now()).format(todoApp.utilities.isoFormat);  
}
todoApp.utilities.momentFromTimestamp = function(timestamp) {
  return moment(timestamp, todoApp.utilities.isoFormat);
}
todoApp.utilities.describeTimestamp = function(timestamp) {
  var time = todoApp.utilities.momentFromTimestamp(timestamp);

  return moment(time).fromNow();
}
todoApp.utilities.updateTimeDescriptions = function() {
  console.log("updating time descriptions");

  $(".time").each( function(idx, el) {
      var $el     = $(el),
          created = $el.data("created");

      $el.text(todoApp.utilities.describeTimestamp(created));
  });
}
