<%--
  Created by IntelliJ IDEA.
  User: zhang_yao_wu1993
  Date: 14/12/20
  Time: 下午2:18
--%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>welcome</title>
        <script type="text/javascript" src="other/jquery-2.1.3.js"></script>
        <script type="text/javascript" src="other/index.js"></script>
        <link href="other/index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="background">
            <div id="frame">
                <div id="head">
                    <div id="head_left">
                        <div id="title">ZeRur Blog</div>
                        <div id="menu">
                            <div class="menu_div"><a class="main_font" href="/index.jsp">HOME</a></div>
                        </div>
                    </div>
                    <div id="head_right">
                        <canvas id="canvas"></canvas>
                    </div>
                    <div id="head_bottom"></div>
                </div>
                <div id="body">
                    <div id="body_left">
                        <div class="choose_box">
                            <span class="choose_box_span" onclick="mainPage()">主页</span>
                        </div>
                        <div class="choose_box">
                            <span class="choose_box_span">日志</span>
                            <ul class="choose_box_ul">
                                <li class="choose_box_li">spring</li>
                                <li class="choose_box_li">summer</li>
                            </ul>
                        </div>
                        <div class="choose_box">
                            <span class="choose_box_span">游戏</span>
                            <ul class="choose_box_ul">
                                <li class="choose_box_li" onclick="game2048()">2048</li>
                                <li class="choose_box_li">4096</li>
                            </ul>
                        </div>
                        <div class="choose_box">
                            <span class="choose_box_span">留言</span>
                        </div>
                        <div class="choose_box">
                            <span class="choose_box_span">作者</span>
                        </div>
                    </div>
                    <div id="body_right">
                        <iframe id="iframe" src="mainpage.jsp" scrolling="no" frameborder="0"></iframe>
                    </div>
                    <div id="body_bottom"></div>
                </div>
            </div>
        </div>
    </body>
</html>



