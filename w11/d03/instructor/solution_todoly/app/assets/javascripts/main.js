var addTask = function(e){
  e.preventDefault();

  var newItem = $('input[name="item"]').val();

  $.ajax({
    url: "/tasks",
    type: "POST",
    data: {task: { description: newItem }}
  }).done(renderTask);
};

var toggleComplete = function(e) {
  var $liTag = $(this).parent('li');
  var task = $liTag.data();
  $.ajax({
    type: "PUT",
    url: "/tasks/" + task.id,
    data: { task: { is_complete: !task.is_complete }}
  }).done(function(updatedTask){
    $liTag.data(updatedTask);
    if (updatedTask.is_complete) {
      $liTag.children('.description').addClass('complete');
    } else {
      $liTag.children('.description').removeClass('complete');
    }
  });
}

var renderTask = function(task) {
  var html = '<span class="description">' + task.description + '</span>' +
             '<input type="checkbox">' +
             '<span class="remove">×</span>';
  $('<li>').data(task).html(html).appendTo("#tasks");
};

var removeTask = function(e) {
  var $liTag = $(e.currentTarget).parent('li');
  var task = $liTag.data();
  $.ajax({
    type: "delete",
    url: "/tasks/" + task.id
  }).done(function(response){
    $liTag.remove();
  });
};

$(document).ready(function(){

  $('.task-create button').on('click', addTask)
  // $('#tasks input[type="checkbox"]').on('change', toggleComplete);
  $('#tasks').on('change', 'input[type="checkbox"]', toggleComplete);
  $('#tasks').on('click', '.remove', removeTask);

});
