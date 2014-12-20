$(document).ready(function () {
    $(".left_link_2").hide();
    $(".left_link_4").hide();

    $("#left_link_href_1").click(function() {
        $(".left_link_2").fadeToggle(500);
    })

    $("#left_link_href_3").click(function() {
        $(".left_link_4").fadeToggle(500);
    })
});