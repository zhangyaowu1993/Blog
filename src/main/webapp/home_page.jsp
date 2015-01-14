<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ZeRur的个人主页</title>
        <script type="text/javascript" src="JsCssLib/jquery-2.1.3.js"></script>

        <link rel="stylesheet" type="text/css" href="JsCssLib/uikit-2.12.0/css/uikit.almost-flat.css">
        <script type="text/javascript" src="JsCssLib/uikit-2.12.0/js/uikit.js"></script>

        <script type="text/javascript" src="JsCssLib/myfocus/myfocus-2.0.1.min.js"></script>
        <link rel="stylesheet" type="text/css" href="JsCssLib/myfocus/mF_classicHC.css">
        <script type="text/javascript" src="JsCssLib/myfocus/mF_classicHC.js"></script>

        <link rel="stylesheet" type="text/css" href="CssFile/home_page.css">
        <script type="text/javascript" src="JsFile/home_page.js"></script>
    </head>

    <body>

        <div id="top_bar_wrap">
            <div id="top_bar_nav">
                <table>
                    <td><a href="/home_page.jsp">主页</a></td>
                    <td><a href="/diary_page.jsp">日志</a></td>
                    <td><a href="javascript:void(0)">音乐</a></td>
                    <td><a href="/pic_page.jsp">图库</a></td>
                    <td><a href="/2048_page.jsp">2048</a></td>
                    <td><a href="javascript:void(0)">RSS</a></td>
                    <td><a href="/anim_essay_page.jsp">动漫美文</a></td>
                </table>
            </div>
        </div><!--end top_bar_wrap-->

        <div id="body_wrap">
            <div id="pic_box_container">
                <div id="picBox">
                    <div class="loading"><img src="/resources/home_page_pic_box_resource/loading.gif" alt="请稍候..." /></div>
                    <div class="pic">
                        <ul>
                            <li><a href="###"><img src="/resources/home_page_pic_box_resource/0.jpg" alt="春天的樱花 在长长的坡道上飞舞得漫天绚烂" /></a></li>
                            <li><a href="###"><img src="/resources/home_page_pic_box_resource/1.jpg" alt="夏夜的萤火 穿梭在林间诉说着千年的传说" /></a></li>
                            <li><a href="###"><img src="/resources/home_page_pic_box_resource/2.jpg" alt="秋季的音符 在老化的城市小巷中飘满回荡" /></a></li>
                            <li><a href="###"><img src="/resources/home_page_pic_box_resource/3.jpg" alt="冬日的落雪 是谁拂去了围巾上沉积的旷古冰寒" /></a></li>
                        </ul>
                    </div>
                </div><%--end picBox--%>
            </div><!--end pic_box_container-->
        </div><!--end body_wrap-->

        <div id="footer_wrap">
            <div id="footer_notice">
                <div class="footer_notice_clickable"><a href="https://github.com/zhangyaowu1993" data-uk-tooltip title="Click">GitHub</a></div>
                <div class="footer_notice_clickable"><a href="javascript:void(0)" data-uk-tooltip title="zhang_yao_wu1993@yeah.net">邮箱</a></div>
                <div class="footer_notice_clickable"><a href="javascript:void(0)" data-uk-tooltip title="609-402-951">企鹅号</a></div>
                <div class="footer_notice_unclickable">Made by ZeRur.</div>
                <div class="footer_notice_unclickable">Wish you love it.</div>
            </div><!--end footer_notice-->
        </div><!--end footer_wrap-->

    </body>
</html>
