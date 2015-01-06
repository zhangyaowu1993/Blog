<%--
  Created by IntelliJ IDEA.
  User: zhang_yao_wu1993
  Date: 14/12/20
  Time: 下午2:18
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ZeRur Blog</title>
        <script type="text/javascript" src="other/myfocus-2.0.1.min.js"></script> <%--picBox--%>
        <script type="text/javascript" src="other/mF_qiyi.js"></script>
        <link href="other/mF_qiyi.css" rel="stylesheet" type="text/css"/>

        <script type="text/javascript" src="other/jquery-2.1.3.js"></script>
        <script type="text/javascript" src="other/index.js"></script>
        <link href="other/index.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="top">
            <div class="top_bar">
                <div class="top_bar_hint">
                    <ul>
                        <li id="top_bar_clock"></li>
                        <li>元旦快乐</li>
                        <li>你好 欢迎来到 ZeRur 的主页</li>
                    </ul>
                </div>
            </div><%--end top_bar--%>
        </div><%--end top--%>

        <div class="wrap">
            <div class="nav">
                <div class="nav_left">
                    <span><a href="#">ZeRurの二次元世界</a></span>
                    <span class="nav_left_goal">[Girl Friend] 0.001/1</span>
                    <span class="nav_left_goal">[Program Manager] 0.01/1</span>
                    <span class="nav_left_goal">[Graduate] 0.8/1</span>
                </div><%--end nav_left--%>
                <div class="nav_right">
                    <span id="nav_right_like">如果你喜欢本网页 点个<a href="#" onclick="clickLike()">赞</a></span>
                </div><%--end nav_right--%>
            </div><%--end nav--%>

            <div class="ad_left">
                <ul id="ad_left_ul">
                    <%--will fill by javascript--%>
                </ul>
            </div><%--ad_left--%>

            <div id="picBox" class="ad">
                <div class="loading"><img src="../resources/loading.gif" alt="请稍候..." /></div>
                <div class="pic">
                    <ul>
                        <li><a href="#"><img src="../resources/pic1.jpeg" alt="春天的樱花 在长长的坡道上飞舞得漫天绚烂" /></a></li>
                        <li><a href="#"><img src="../resources/pic2.jpg" alt="夏夜的萤火 穿梭在林间诉说着千年的传说" /></a></li>
                        <li><a href="#"><img src="../resources/pic3.jpg" alt="秋季的音符 在老化的城市小巷中飘满回荡" /></a></li>
                        <li><a href="#"><img src="../resources/pic4.jpg" alt="冬日的落雪 是谁拂去了围巾上沉积的旷古冰寒" /></a></li>
                    </ul>
                </div>
            </div><%--end ad--%>

            <div class="ad_right">
                <form action="#" method="post">
                    <ul>
                        <li>
                            <label>账户</label><input type="text" placeholder="account"/>
                        </li>
                        <li>
                            <label>密码</label><input type="text" placeholder="password"/>
                        </li>
                        <li>
                            <a href="#" date="submit">
                                <span class="button_line button_line_top"></span>
                                <span class="button_line button_line_right"></span>
                                <span class="button_line button_line_bottom"></span>
                                <span class="button_line button_line_left"></span>
                                submit
                            </a>
                        </li>
                    </ul>
                </form>

                <div class="intro_container">
                    <div id="drag_hit_id" class="drag_hit">拖动图片到另一个框试试</div>
                    <div class="intro intro_top_left" ondrop="dropImg(event)" ondragover="allowDrop(event)">
                        <img id="intro_img1" src="../resources/intro1.jpeg" width="70px" height="70px" style="float: left" draggable="true" ondragstart="dragImg(event)"/>
                    </div>
                    <div class="intro intro_top_right" ondrop="dropImg(event)" ondragover="allowDrop(event)"></div>
                    <div class="intro intro_bottom_left" ondrop="dropImg(event)" ondragover="allowDrop(event)"></div>
                    <div class="intro intro_bottom_right" ondrop="dropImg(event)" ondragover="allowDrop(event)"></div>

                </div><%--end intro_container--%>
            </div><%--end ad_right--%>

            <div class="animation_intro_container">
                <div id="animation_intro_pic_container">
                    <img id="animation_intro__pic_img" src="resources/ad_left_pics/ad_left_pic_0.jpg"/>
                </div>
                <div id="animation_intro__content_container">
                    <span id="animation_intro__content_title">作者の介绍:ZeRur<%--will change by javascript--%></span>
                    <p id="animation_intro__content_text">
                        专注于程序设计，是一个正直的人。
                        <%--will change by javascript--%>
                    </p>
                </div><%--end data_frame_para_container--%>
            </div><%--end data_container--%>

            <div class="video_frame_container">
                <div class="video_frame_left">剧集列表</div>
                <div class="video_frame_right">
                    <ul>
                        <%--fill by javascript--%>
                    </ul>
                </div>
            </div><%--end video_frame_container--%>

            <div class="music_blog_container">
                <div class="music_container">
                    <span>音乐鉴赏</span>
                    <div class="music_icon">
                        <img src="../resources/music_button.gif" width="24px" height="16px" />
                    </div>
                    <div id="music_play_pause_button" class="music_play_pause_button" onclick="clickPlayPauseButton()"></div>
                    <audio src="/resources/article_music/0.mp3" id="myAudio"></audio>
                    <ul id="music_list_ul">
                        <%--fill with javascript , music_list--%>
                    </ul>
                </div><%--end music_container--%>

                <div class="blog_container">
                    <span>日志</span>
                    <ul id="blog_container_ul">
                        <%--<li><a href="javascript:void(0)">魔兽世界最卑微种族论</a><span>旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。</span></li>--%>
                        <%--<li><a href="javascript:void(0)">魔兽世界最卑微种族论</a><span>旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。</span></li>--%>
                        <%--<li><a href="javascript:void(0)">魔兽世界最卑微种族论</a><span>旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。</span></li>--%>
                        <%--<li><a href="javascript:void(0)">魔兽世界最卑微种族论</a><span>旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。</span></li>--%>
                        <%--<li><a href="javascript:void(0)">魔兽世界最卑微种族论</a><span>旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。</span></li>--%>
                        <%--<li><a href="javascript:void(0)">魔兽世界最卑微种族论</a><span>旷世经典魔兽世界中最卑微的种族，这一观点由大法师无视帝提出。</span></li>--%>
                    </ul>
                </div><%--end blog_container--%>
            </div><%--end music_blog_container--%>
        </div><%--end wrap--%>

        <div class="footer">
            <div class="footer_copyright">Designed By ZeRur ©2015</div>
        </div><%--end footer--%>
    </body>
</html>
