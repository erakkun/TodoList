/**
 * Created by joona on 4.10.2016.
 */
$(document).ready(function() {
    $(".task-edit").hide();

    $("button.edit-button").click(function(){
        var field = $(this).parent().parent().parent();
        field.find(".task-list").toggle();
        field.find(".task-edit").toggle();
    })
});