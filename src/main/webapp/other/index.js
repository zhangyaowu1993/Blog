// auto load function
$(document).ready(function() {
    addAdList();
    addVideoList();
    addMusicList();
    addBlogList();
    setTimeout("updateClock()", 500);
})

// Clock
function updateClock() {
    var clock = document.getElementById("top_bar_clock");
    var date = new Date();
    var time = (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":" +
        (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":" +
        (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds());
    clock.innerHTML = time;
    setTimeout("updateClock()", 500);
}

// clickLike
function clickLike() {
    var honour = document.getElementById("nav_right_like");
    $("#nav_right_like").fadeTo(400, 0);
    setTimeout(function() {
        honour.innerHTML = "感谢您的点赞";
        $("#nav_right_like").fadeTo(400, 1);
    }, 400);

}

// fill ad_left when init
// when init page, will send a request to server, return a string of ad_left <li> list
var index_ad_init_request;

function addAdList() {
    index_ad_init_request = new XMLHttpRequest();
    index_ad_init_request.open("GET", "responses/index_response.jsp?index_request=init_ad<split>", true);
    index_ad_init_request.onreadystatechange = initAdCallBack;
    index_ad_init_request.send();
}

function initAdCallBack() {
    if(index_ad_init_request.readyState == 4) {
        if(index_ad_init_request.status == 200) {
            var init_ad_text = index_ad_init_request.responseText;
            document.getElementById("ad_left_ul").innerHTML = init_ad_text;
        }
    }
}

// fill ad_left when click ad
// when click ad, a request will send to server, then server will return a string of  title<split>paragraph
var index_ad_request;

function clickAd(number) {
    index_ad_request = new XMLHttpRequest();
    index_ad_request.open("GET", "responses/index_response.jsp?index_request=ad<split>" + number, true);
    index_ad_request.onreadystatechange = clickAdCallBack;
    index_ad_request.send();

    if(number <= 10) {
        document.getElementById("animation_intro__pic_img").setAttribute("src", "resources/ad_left_pics/ad_left_pic_" + number + ".jpg");
    }
    else {
        document.getElementById("animation_intro__pic_img").setAttribute("src", "resources/ad_left_pics/trans_pic_" + number % 10 + ".png");
    }
}

function clickAdCallBack() {
    if(index_ad_request.readyState == 4) {
        if(index_ad_request.status == 200) {
            var paragraph = index_ad_request.responseText;
            var splited_paragraph = paragraph.split("<split>");
            document.getElementById("animation_intro__content_title").innerHTML = splited_paragraph[0];
            document.getElementById("animation_intro__content_text").innerHTML = splited_paragraph[1];
        }
    }
}

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

// fill video_container
function addVideoList() {
    for(var i = 1; i < 22; i++) {
        $(".video_frame_right ul").append('<li><a href="javascript:void(0)">第' + (i < 10 ? "0" + i : i) + '集</a></li>');
    }
}

// fill music_container
// when init page will send a request to server, then return a string of music <li> list
var index_music_request;

function addMusicList() {
    index_music_request = new XMLHttpRequest();
    index_music_request.open("GET", "responses/index_response.jsp?index_request=music<split>", true);
    index_music_request.onreadystatechange = addMusicListCallBack;
    index_music_request.send();
}

function addMusicListCallBack() {
    if(index_music_request.readyState == 4) {
        if(index_music_request.status == 200) {
            var music_list = index_music_request.responseText;
            document.getElementById("music_list_ul").innerHTML = music_list;
        }
    }
}

// play sound
var is_music_playing = false;
var is_first_click_play_button = true;

function clickMusicButton(number) {
    var myAudio = document.getElementById("myAudio");
    myAudio.setAttribute("src", "/resources/article_music/" + number + ".mp3");
    myAudio.volume = 0.5;
    is_music_playing = true;
    clickPlayPauseButton();
    myAudio.play();
}

function clickPlayPauseButton() {
    var myAudio = document.getElementById("myAudio");
    myAudio.volume = 0.5;

    if(is_first_click_play_button == true) {
        document.getElementById("music_play_pause_button").style.background = 'url("/resources/music_pause.jpeg")';
        myAudio.play();
        is_first_click_play_button = false;
        return;
    }

    if(is_music_playing == true) {
        document.getElementById("music_play_pause_button").style.background = 'url("/resources/music_pause.jpeg")';
        is_music_playing = false;
        myAudio.play();
    }
    else {
        document.getElementById("music_play_pause_button").style.background = 'url("/resources/music_play.jpeg")';
        is_music_playing = true;
        myAudio.pause();
    }
}

// add blog list
var index_blog_request;
function addBlogList() {
    index_blog_request = new XMLHttpRequest();
    index_blog_request.open("GET", "responses/index_response.jsp?index_request=blog<split>", true);
    index_blog_request.onreadystatechange = addBlogCallBack;
    index_blog_request.send();
}

function addBlogCallBack() {
    if(index_blog_request.readyState == 4) {
        if(index_blog_request.status == 200) {
            var blog_list = index_blog_request.responseText;
            document.getElementById("blog_container_ul").innerHTML = blog_list;
        }
    }
}