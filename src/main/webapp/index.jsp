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
                <div class="top_bar_hit">
                    <ul>
                        <li id="clock"></li>
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
                    <span class="nav_left_process">[Girl Friend] 0.001/1</span>
                    <span class="nav_left_process">[Program Manager] 0.01/1</span>
                    <span class="nav_left_process">[Graduate] 0.8/1</span>
                </div><%--end nav_left--%>
                <div class="nav_right">
                    <span id="honour">如果你喜欢本网页 点个<a href="#" onclick="clickHonour()">赞</a></span>
                </div><%--end nav_right--%>
            </div><%--end nav--%>


            <div class="ad_left">
                <ul>
                    <li><a class="recommend_author" href="#" onclick="clickAd(0)">作者の介绍:ZeRur</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(1)">动漫の世界－Angel Beats</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(2)">动漫の世界－花开物语</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(3)">动漫の世界－翠星之加尔刚蒂亚</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(4)">动漫の世界－Love Live</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(5)">动漫の世界－某科学的超电磁炮</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(6)">动漫の世界－刀剑神域</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(7)">动漫の世界－心理测量者</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(8)">动漫の世界－玉子市场</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(9)">动漫の世界－fate/stay night</a></li>
                    <li><a class="recommend_animation" href="#" onclick="clickAd(10)">动漫の世界－天体的秩序</a></li>
                    <li style="border-bottom: 1px solid mediumpurple"><a class="recommend_game" href="/2048.jsp" onclick="clickAd(11)">游戏の世界－2048</a></li>
                    <li style="border-bottom: 1px solid mediumpurple"><a class="recommend_game" href="#" onclick="clickAd(12)">游戏の世界－待填充</a></li>
                    <li style="border-bottom: 1px solid mediumpurple"><a class="recommend_game" href="#" onclick="clickAd(13)">游戏の世界－待填充</a></li>
                </ul>
            </div><%--ad_left--%>

            <div id="picBox" class="ad">
                <div class="loading"><img src="resources/loading.gif" alt="请稍候..." /></div>
                <div class="pic">
                    <ul>
                        <li><a href="#"><img src="resources/pic1.jpeg" alt="春天的樱花 在长长的坡道上飞舞得漫天绚烂" /></a></li>
                        <li><a href="#"><img src="resources/pic2.jpg" alt="夏夜的萤火 穿梭在林间诉说着千年的传说" /></a></li>
                        <li><a href="#"><img src="resources/pic3.jpg" alt="秋季的音符 在老化的城市小巷中飘满回荡" /></a></li>
                        <li><a href="#"><img src="resources/pic4.jpg" alt="冬日的落雪 是谁拂去了围巾上沉积的旷古冰寒" /></a></li>
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
                        <img id="intro_img1" src="resources/intro1.jpeg" width="70px" height="70px" style="float: left" draggable="true" ondragstart="dragImg(event)"/>
                    </div>
                    <div class="intro intro_top_right" ondrop="dropImg(event)" ondragover="allowDrop(event)"></div>
                    <div class="intro intro_bottom_left" ondrop="dropImg(event)" ondragover="allowDrop(event)"></div>
                    <div class="intro intro_bottom_right" ondrop="dropImg(event)" ondragover="allowDrop(event)"></div>

                </div><%--end intro_container--%>
            </div><%--end ad_right--%>
            <div class="data_frame">
                <div id="data_frame_pic_container">
                    <img id="data_frame_img" src="resources/ad_left_pics/ad_left_pic_0.jpg"/>
                </div>
                <div id="data_frame_para_container">
                    <span id="title">作者の介绍:ZeRur</span>
                    <p id="para">
                        专注于程序设计，是一个正直的人。
                    </p>
                </div><%--end data_frame_para_container--%>
            </div><%--end data_frame--%>
        </div><%--end wrap--%>
    </body>
</html>
