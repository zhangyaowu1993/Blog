<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ZeRur的个人主页</title>
        <script type="text/javascript" src="/JsCssLib/jquery-2.1.3.js"></script>

        <link rel="stylesheet" type="text/css" href="JsCssLib/uikit-2.12.0/css/uikit.almost-flat.css">
        <script type="text/javascript" src="JsCssLib/uikit-2.12.0/js/uikit.js"></script>

        <script type="text/javascript" src="/JsFile/2048_page.js"></script>
        <link href="/CssFile/2048_page.css" rel="stylesheet" type="text/css"/>
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
            <header>
                <a id="new_game_button" href="javascript:newgame()">新游戏</a>
                <p>分数: <span id="score">0</span></p>
                <div id="container">
                    <div id="grid0_0" class="grid"></div>
                    <div id="grid0_1" class="grid"></div>
                    <div id="grid0_2" class="grid"></div>
                    <div id="grid0_3" class="grid"></div>

                    <div id="grid1_0" class="grid"></div>
                    <div id="grid1_1" class="grid"></div>
                    <div id="grid1_2" class="grid"></div>
                    <div id="grid1_3" class="grid"></div>

                    <div id="grid2_0" class="grid"></div>
                    <div id="grid2_1" class="grid"></div>
                    <div id="grid2_2" class="grid"></div>
                    <div id="grid2_3" class="grid"></div>

                    <div id="grid3_0" class="grid"></div>
                    <div id="grid3_1" class="grid"></div>
                    <div id="grid3_2" class="grid"></div>
                    <div id="grid3_3" class="grid"></div>
                </div>
            </header><!--end header-->
            <button id="hide_button" class="uk-button" type="button" data-uk-modal="{target:'#submit_score_window'}"></button>
            <div id="submit_score_window" class="uk-modal">
                <div class="uk-modal-dialog" style="text-align: center;">
                    <a id="ranking_close" class="uk-modal-close uk-close"></a>
                    <p id="ranking">排行榜</p>
                    <p id="rank_1">无视1号 100</p>
                    <p id="rank_2">无视2号 200</p>
                    <p id="rank_3">无视3号 300</p>
                    <form class="uk-form">
                        <fieldset data-uk-margin>
                            <legend id="hit_legend"></legend>
                            <input id="player_name" type="text" value="匿名" placeholder="名字 不得超过15字" class="uk-width-1-1">
                            <button id="submit_score_button" class="uk-button uk-button-success" style="margin: auto;" type="submit">提交</button>
                        </fieldset>
                    </form>
                </div>
            </div><!--end 模态对话框-->
        </div><!--end body_wrap-->

    </body>
</html>