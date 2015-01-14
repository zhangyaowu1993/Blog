$(document).ready(function() {
    // 页面加载时插入 Essay
    insertEssay();

    // 点击刷新按钮时
    $("#refresh_button").click(clickRefreshButton);
});

/**
 * 删除 essay_container 中的所有 essay
 */
function deleteEssay() {
    $("#essay_container").empty();
}

/**
 * 向 essay_container 中添加 essay
 */
var div_style = new Array();
div_style.push("");
div_style.push("uk-alert-success");
div_style.push("uk-alert-warning");
div_style.push("uk-alert-danger");

function insertEssay() {
    $.post("/responseFile/anim_essay_page_response.jsp?anim_essay_request=get_essay_list", function callback(data, status) {
        if(status == "success") {
            var essay_JSONObject = $.parseJSON(data);
            var essay_container_innerHTML = "";
            for(var i = 0; i < essay_JSONObject.essay.length; i++) {
                var style_index = Math.floor(Math.random() * 4);
                essay_container_innerHTML += "<div class=\"uk-alert uk-animation-scale " + div_style[style_index] + "\" data-uk-alert><a href=\"\" class=\"uk-alert-close uk-close\"></a><p>" + essay_JSONObject.essay[i] + "</p></div>";
            }
            $("#essay_container").html(essay_container_innerHTML);
        }
    });
}

/**
 * 点击换一批的事件处理 删除剩下的 essay 添加新的 essay
 */
function clickRefreshButton() {
    deleteEssay();
    insertEssay();
}