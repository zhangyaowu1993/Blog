/**
 * index.js
 * @author Zerur
 */

// auto load function
$(document).ready(function() {
    // init
    updateTopBarClock();
    fillAdContainer();
    fillMusicContainer();
    fillBlogContainer();
    myFocus.set({
        id:'picBox',//ID
        pattern:'mF_qiyi'//风格
    });

    // event click like
    $("#nav_right_like_href").click(function clickLike() {
        var honour = document.getElementById("nav_right_like");
        $("#nav_right_like").fadeTo(400, 0);
        setTimeout(function() {
            honour.innerHTML = "感谢您的点赞";
            $("#nav_right_like").fadeTo(400, 1);
        }, 400);
    });

    // music play_pause_button
    $("#music_play_pause_button").click(function musicPlayPause() {
        if($("#myAudio")[0].paused == false) {
            // play status
            changeMusicPlayPausePic(true);
            $("#myAudio")[0].pause();
        }
        else {
            // pause status
            changeMusicPlayPausePic(false);
            $("#myAudio")[0].play();
        }
    })
});

/**
 * init clock
 */
function updateTopBarClock() {
    var clock = document.getElementById("top_bar_clock");
    var date = new Date();
    var time = (date.getHours() < 10 ? "0" + date.getHours() : date.getHours()) + ":" +
        (date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes()) + ":" +
        (date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds());
    clock.innerHTML = time;
    setTimeout("updateTopBarClock()", 500);
}

/**
 * init ad_container
 * callback clickAdLeft()
 */
function fillAdContainer() {
    $("#ad_left_ul").load("/responses/index_response.jsp?index_request=fill_ad_left", function fillAdContainerCallBack() {
        $(".recommend").click(function clickAdLeft() {
            var click_index = parseInt($(this).attr("data"));

            // change pic
            if(click_index <= 10) {
                document.getElementById("animation_intro__pic_img").setAttribute("src", "resources/ad_left_pics/ad_left_pic_" + click_index + ".jpg");
            }
            else {
                document.getElementById("animation_intro__pic_img").setAttribute("src", "resources/ad_left_pics/trans_pic_" + click_index % 10 + ".png");
            }

            // send request and callback to fill animation_intro_container
            $.post("responses/index_response.jsp?index_request=click_ad_request&request_index=" + click_index, function clickAdLeftCallBack(data, status) {
                var JSONObject = $.parseJSON(data);
                $("#animation_intro__content_title").html(JSONObject.response_title);
                $("#animation_intro__content_text").html(JSONObject.response_text);
            });
        })
    });
}

/**
 * init music_container
 * callback clickMusicButton
 */
function fillMusicContainer() {
    $("#music_list_ul").load("/responses/index_response.jsp?index_request=fill_music_container", function fillMusicContainerCallBack() {
        $(".music_play").click(function clickMusicButton() {
            $("#myAudio").attr("src", "/resources/musics/" + $(this).attr("data") + ".mp3");
            $("#myAudio")[0].volume = 0.5;
            changeMusicPlayPausePic(false);
            $("#myAudio")[0].play();
        });
    });
}

/**
 * init blog_container
 */
function fillBlogContainer() {
    $("#blog_container_ul").load("/responses/index_response.jsp?index_request=fill_blog_container");
}

/**
 * 改变音乐按钮的背景
 * @param isMusicPlaying 当前音乐状态 true false
 */
function changeMusicPlayPausePic(isChangeToPlayIcon) {
    if(isChangeToPlayIcon == true) {
        $("#music_play_pause_button").css("background", "url(\"/resources/music_play.jpeg\")");
    }
    else {
        $("#music_play_pause_button").css("background", "url(\"/resources/music_pause.jpeg\")");
    }
}