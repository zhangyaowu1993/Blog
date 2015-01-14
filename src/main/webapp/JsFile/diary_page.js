$(document).ready(function() {
    // 初始化文章列表 默认选中第一篇日志 添加点击日志列表事件处理 更新 body_wrap 大小
    initDiarySelect();

    // 循环检查评论输入框的内容
    checkInputTextArea();

    // 点击评论提交事件处理
    $("#comment_submit_button").click(submitComment);

    // 点击展开评论事件处理
    $("#unfold_comment").click(hideShowCommentButton);
});



/**
 * 初始化文章列表 默认选中第一篇日志 添加点击日志列表事件处理 更新 body_wrap 大小
 */
function initDiarySelect() {
    $.post("/responseFile/diary_page_response.jsp?diary_page_request=init_diary_select", function callback(data, status) {
        if(status == "success") {
            var diary_select_JSONObject = $.parseJSON(data);
            var diary_select_innerHTML = "";
            for(var i = 0; i < diary_select_JSONObject.title.length; i++) {
                diary_select_innerHTML += "<li><a href=\"javascript:void(0)\" data=\"" + diary_select_JSONObject.title[i]._id + "\">" + diary_select_JSONObject.title[i]._title + "</a></li>"
            }
            $("#diary_select ul").html(diary_select_innerHTML);
            selectFirstDiaryWhenInit();
            addDiarySelectEvent();
        }
    });
}

/**
 * 默认选中第一篇日志
 */
function selectFirstDiaryWhenInit() {
    $("#diary_select ul li").eq(0).attr("class", "uk-active");
    var first_index = $("#diary_select ul li a").eq(0).attr("data");
    getArticleAndUpdateToPage(first_index);
}

/**
 * 更新 body_wrap div 的高度 让其高度为内部两个元素高度大较大者 ＋ 90
 */
function updateBodyWrapHeight() {
    var diary_select_height = $("#diary_select").eq(0).outerHeight();
    var diary_container_height = $("#diary_container").eq(0).outerHeight();
    var comment_container_height = $("#comment_container").eq(0).outerHeight();

    var body_wrap_height = diary_container_height + comment_container_height < diary_select_height ? diary_select_height : diary_container_height + comment_container_height;
    body_wrap_height += 90;
    $("#body_wrap").css("height", body_wrap_height + "px");
}

/**
 * 点击日志列表时的事件处理 自带更新 body_wrap
 */
function addDiarySelectEvent() {
    // 点击文章选择按钮时
    $("#diary_select ul li a").click(function clickDiarySelect() {
        // 改变按钮样式
        updateButtonStyle(this);

        // 删除评论 显示显示评论按钮
        deleteCommentAndDisplayShowCommentButton();

        // 获取文章 并且更新到页面 更新 body_wrap 大小
        getArticleAndUpdateToPage($(this).attr("data"));
    });
}

/**
 * 更新文章选择按钮样式
 * @param _this  $("#diary_select ul li a")
 */
function updateButtonStyle(_this) {
    $("#diary_select ul li").attr("class", "");
    $(_this).parent().attr("class", "uk-active");
}

/**
 * 在点击选择文章之后 删除已有的评论 显示显示评论按钮
 */
function deleteCommentAndDisplayShowCommentButton() {
    $("#unfold_comment").show();
    $("#show_comment_article").empty();
}

/**
 * 通过 ajax 获得文章并且更新到页面
 * @param selected_diary 请求的文章序号 从0开始
 */
function getArticleAndUpdateToPage(selected_diary) {
    $.post("/responseFile/diary_page_response.jsp?diary_page_request=select_diary&selected_diary=" + selected_diary, function callback(data, status) {
        if(status == "success") {
            var JSONObject = $.parseJSON(data);
            // 拼出文章对应的 html 文本
            var diary_innerHTML = "<h1 class=\"uk-article-title\">" + JSONObject.response_title + "</h1><p class=\"uk-article-meta\">" + JSONObject.response_meta + "</p>" + JSONObject.response_text + "<hr class=\"uk-article-divider\">" + JSONObject.response_footnote;

            $("#diary_article").html(diary_innerHTML);
        }
        updateBodyWrapHeight();
    });
}

/**
 * 循环检查输入框的内容 改变其颜色
 */
function checkInputTextArea() {
    // 检查名字框体
    if($("#comment_author_area").val().length > 10 || $("#comment_author_area").val().length == 1) {
        $("#comment_author_area").attr("class", "uk-width-1-1 uk-form-danger");
    }
    else if($("#comment_author_area").val().length > 1) {
        $("#comment_author_area").attr("class", "uk-width-1-1 uk-form-success");

    }
    else {
        $("#comment_author_area").attr("class", "uk-width-1-1");
    }

    // 检查内容框体
    if($("#comment_text_area").val().length > 50 || $("#comment_text_area").val().length == 1) {
        $("#comment_text_area").attr("class", "uk-width-1-1 uk-form-danger");
    }
    else if($("#comment_text_area").val().length > 1) {
        $("#comment_text_area").attr("class", "uk-width-1-1 uk-form-success");

    }
    else {
        $("#comment_text_area").attr("class", "uk-width-1-1");
    }


    setTimeout(checkInputTextArea, 200);
}

/**
 * 提交评论
 */
function submitComment() {
    var author = $("#comment_author_area").val();
    var comment = $("#comment_text_area").val();
    if(author.length < 2 || author.length > 10) {
        $("#submit_hit_div").html("提交失败 请输入正确的名字");
        $("#submit_hit_div").css("color", "red");
        $("#hide_button").click();
        return;
    }
    if(comment.length < 2 || comment.length > 50) {
        $("#submit_hit_div").html("提交失败 请输入正确的内容");
        $("#submit_hit_div").css("color", "red");
        $("#hide_button").click();
        return;
    }

    var diary_index = $(".uk-active a").eq(0).attr("data");
    $.post("/responseFile/diary_page_response.jsp?diary_page_request=submit_comment&author=" + author + "&comment=" + comment + "&diary_id=" + diary_index, function callback(data, status) {
        if(status == "success") {
            $("#submit_hit_div").html("提交成功 感谢您的评论");
            $("#submit_hit_div").css("color", "green");
            $("#hide_button").click();
            $("#comment_author_area").val("");
            $("#comment_text_area").val("");
            hideShowCommentButton();
        }
    });
}

/**
 * 显示评论 更新 body_wrap 高度
 */
function showComment() {
    var diary_index = $(".uk-active a").eq(0).attr("data");
    $.post("/responseFile/diary_page_response.jsp?diary_page_request=show_comment&diary_id=" + diary_index, function callback(data, status) {
        if(status == "success") {
            var comment_JSONObject = $.parseJSON(data);
            var show_comment_article_innerHTML = "";
            for(var i = 0; i < comment_JSONObject.comment.length; i++) {
                show_comment_article_innerHTML += "<header class=\"uk-comment-header uk-animation-slide-top\"><img class=\"uk-comment-avatar\" src=\"/resources/pic.svg\" alt=\"\"><h4 class=\"uk-comment-title\">" + comment_JSONObject.comment[i].title + "</h4><div class=\"uk-comment-meta\">" + comment_JSONObject.comment[i].text + "</div></header>";
            }
            $("#show_comment_article").html(show_comment_article_innerHTML);
            updateBodyWrapHeight();
        }
    });
}

/**
 * 淡出显示评论按钮
 */
function hideShowCommentButton() {
    $("#unfold_comment").fadeOut(100);
    setTimeout(showComment, 100);
}