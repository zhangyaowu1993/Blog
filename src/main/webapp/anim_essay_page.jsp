<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ZeRur的个人主页</title>
        <script type="text/javascript" src="JsCssLib/jquery-2.1.3.js"></script>

        <link rel="stylesheet" type="text/css" href="JsCssLib/uikit-2.12.0/css/uikit.almost-flat.css">
        <script type="text/javascript" src="JsCssLib/uikit-2.12.0/js/uikit.js"></script>

        <link rel="stylesheet" type="text/css" href="CssFile/anim_essay_page.css">
        <script type="text/javascript" src="JsFile/anim_essay_page.js"></script>
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
            <div id="middle_wrap">
                <div id="refresh">
                    <button id="refresh_button" class="uk-button uk-button-success uk-width-1-4" type="button">换一批</button>
                </div><!--end refresh-->
                <div id="essay_container">
                    <!--fill by javascript:-->
                </div><!--end essay_container-->
            </div><!--end middle_wrap-->
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