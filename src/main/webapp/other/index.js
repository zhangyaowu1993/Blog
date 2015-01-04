// myFocus
myFocus.set({
    id:'picBox',//ID
    pattern:'mF_qiyi'//风格
});


// drag img
var drag_point = 0;
const colors = ["#33B5E5","#0099CC","#AA66CC","#9933CC","#99CC00","#669900","#FFBB33","#FF8800","#FF4444","#CC0000"]

function dragImg(event) {
    event.dataTransfer.setData("Text", event.target.id);
}

function dropImg(event) {
    event.preventDefault();
    var data = event.dataTransfer.getData("Text");
    event.target.appendChild(document.getElementById(data));

    drag_point++;
    document.getElementById("drag_hit_id").innerHTML = "";
    var drag_sentence = getSentenceByPoint(drag_point);
    var drag_color = getColorByPoint(drag_point);
    document.getElementById("drag_hit_id").innerHTML = "<br/>" + drag_sentence;
    document.getElementById("drag_hit_id").style.color = drag_color;
}

function allowDrop(event) {
    event.preventDefault();
}

function getSentenceByPoint(drag_point) {
    var sentence = "";
    for(var i = 0; i < drag_point % 10; i++) {
        sentence += "O<br/>";
    }
    return sentence;
}

function getColorByPoint(drag_point) {
    var color = colors[Math.floor(drag_point / 10)];
    return color;
}

// Clock
setTimeout("updateClock()", 500);

function updateClock() {
    var clock = document.getElementById("clock");
    var date = new Date();
    var time = (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":" +
        (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":" +
        (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds());
    clock.innerHTML = time;
    setTimeout("updateClock()", 500);
}

// clickHonour
function clickHonour() {
    var honour = document.getElementById("honour");
    $("#honour").hide();
    honour.innerHTML = "感谢您的点赞";
    $("#honour").show(300);
}

// ad_left
var index_ad_request;
function clickAd(number) {
    index_ad_request = new XMLHttpRequest();
    index_ad_request.open("GET", "responses/index_ad_response.jsp?ad_request=" + number, true);
    index_ad_request.onreadystatechange = clickAdCallBack;
    index_ad_request.send();

    if(number <= 10) {
        document.getElementById("data_frame_img").setAttribute("src", "resources/ad_left_pics/ad_left_pic_" + number + ".jpg");
    }
    else {
        document.getElementById("data_frame_img").setAttribute("src", "resources/ad_left_pics/trans_pic_" + number % 10 + ".png");
    }
}

function clickAdCallBack() {
    if(index_ad_request.readyState == 4) {
        if(index_ad_request.status == 200) {
            var paragraph = index_ad_request.responseText;
            var splited_paragraph = paragraph.split("<split>");
            document.getElementById("title").innerHTML = splited_paragraph[0];
            document.getElementById("para").innerHTML = splited_paragraph[1];
        }
    }
}