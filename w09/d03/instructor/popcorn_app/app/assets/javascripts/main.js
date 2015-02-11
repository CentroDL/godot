console.log("Hello from Main!");
$(function() {
  $(".delete_btn").on("click", function(event) {
    event.preventDefault();
    if (window.confirm("Are you sure you want to delete this resource?")) {
      $(event.target).parent().submit();
    }
  });
});
