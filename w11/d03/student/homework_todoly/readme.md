# Todo.ly

![:image](http://www.iwatchstuff.com/2009/03/26/bottle-rocket-criterion-not.jpg)

You've been handed a mostly-written Rails backend that serves up sweet JSON for `Task` objects, and a mostly-written front-end application with a `Task` model and a view. Using your knowledge of AJAX, JavaScript and RESTful routing you're tasked with syncing up the two.

## Setup

1. Run `bundle`, `rake db:create`, `rake db:migrate`, and `rake db:seed` from within your new Rails app folder.

## Completion

**Please finish through Part 3.** As always: more is better; healthy living is
best. Only do the bonus if you have completed every single part.

## Implement the following features

### Part 1

When you enter a new task description and click "save" persist the task to the
database by POSTing with AJAX.

> If you see this error in your network tab `param is missing or the value is
> empty: task` , that's your controller telling you it expects your POST request
> to include the task data formatted as a hash with the the key of `task`

### Part 2

When you enter a new task and persist it to the database, ensure that the new
incomplete task appears on the page without reloading.

### Part 3

Use AJAX to toggle and persist a task's complete or incomplete status. 
Ensure the `.complete` css class toggles as well.

### Part 4

Use AJAX to delete tasks from the database.

## Resources
- [jQuery AJAX](http://api.jquery.com/jquery.ajax/)
