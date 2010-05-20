$(document).ready(function() {
    $(".faq > .answer").each(function() {
        $(this).hide();
    });
    $(".question").click(function() {
        if ($(this).siblings().is(":hidden")) {
            $(this).siblings().slideDown("slow");
        } else {
            $(this).siblings().slideUp("slow");
        }
    });
});
