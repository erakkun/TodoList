/**
 * Created by joona on 4.10.2016.
 */

$(document).ready(function() {
    $(".task-edit").hide();

    $("button.edit-button").click(function(){
        var field = $(this).closest(".task");
        field.find(".task-list").toggle();
        field.find(".task-edit").toggle();
    });

    $("button.save-button").click(function(){
        var field = $(this).closest(".task").find(".task-edit");
        var title = field.find("input[name='title']");
        var deadline = field.find("input[name='deadline']");
        var task_type_id = field.find("select[name='task_type_id']");

       $.ajax({
           type: "POST",
           url: "/tasks",
           data: {
               task: {
                   title: title,
                   task_type_id: task_type_id,
                   deadline: deadline

               }
           }
       })
    });
});