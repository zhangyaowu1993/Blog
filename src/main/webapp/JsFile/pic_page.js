$(document).ready(function() {
    insertPicBox();
    updateMiddleWrapHeight();

    /**
     * 添加点击图片显示大图的事件处理
     * 改变大图框体的 src 属性并且显示大图
     */
    $("#middle_wrap div a").click(function() {
        var src = $(this).children("img").eq(0).attr("src");
        $("#big_pic div img").eq(0).attr("src", src);
        $("#hide_button").click();
    });
});

/**
 * 通过 pic_container 个数确定 middle_wrap 高度 撑开 body_wrap
 */
function updateMiddleWrapHeight() {
    var pic_container_count = $(".pic_container").length;
    var middle_wrap_height = 2 * 30 + 2 * 20 * Math.floor(pic_container_count / 2) + Math.ceil(pic_container_count / 2) * 225;
    $("#middle_wrap").css("height", middle_wrap_height + "px");
}

/**
 * 向 middle_wrap 中插入图片 并且添加点击事件
 */
function insertPicBox() {
    var middle_wrap_innerHTML = "";
    for(var i = 0; i < 12; i++) {
        middle_wrap_innerHTML += "<div class=\"pic_container\"><a class=\"uk-thumbnail uk-animation-scale\" href=\"javascript:void(0)\"><img class=\"small_img\" src=\"/resources/pic_storage/" + i + ".jpg\" alt=\"\"></a></div>"
    }
    $("#middle_wrap").html(middle_wrap_innerHTML);
}