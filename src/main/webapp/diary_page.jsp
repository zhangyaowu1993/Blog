<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>ZeRur的个人主页</title>
        <script type="text/javascript" src="JsCssLib/jquery-2.1.3.js"></script>

        <link rel="stylesheet" type="text/css" href="JsCssLib/uikit-2.12.0/css/uikit.almost-flat.css">
        <script type="text/javascript" src="JsCssLib/uikit-2.12.0/js/uikit.js"></script>

        <link rel="stylesheet" type="text/css" href="CssFile/diary_page.css">
        <script type="text/javascript" src="JsFile/diary_page.js"></script>
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
                <div id="diary_select">
                        <ul class="uk-nav uk-nav-side">
                            <!--fill by javascript:initDiarySelect()-->
                            <%--<li><a href="javascript:void(0)">title</a></li>--%>
                        </ul>
                </div><!--end diary_select-->
                <div id="diary_container">
                    <article id="diary_article" class="uk-article">
                        <!--fill by javascript:getArticleAndUpdateToPage()-->
                    </article><!--end 文章-->
                </div><!--end diary_container-->
                <div id="comment_container">
                    <form class="uk-form">
                        <fieldset data-uk-margin>
                            <legend>评论区</legend>
                            <input id="comment_author_area" type="text" placeholder="提交您的评论 名字 不得多于10字" class="uk-width-1-1"/>
                            <input id="comment_text_area" type="text" placeholder="提交您的评论 内容 不得多于50字" class="uk-width-1-1"/>
                            <button id="comment_submit_button" class="uk-button uk-button-primary" type="button">提交</button>
                            <button id="hide_button" class="uk-button" type="button" data-uk-modal="{target:'#submit_success_div'}"></button><!--hide button-->
                        </fieldset>
                    </form><!--end write_form-->
                    <div id="submit_success_div" class="uk-modal">
                        <div class="uk-modal-dialog">
                            <a class="uk-modal-close uk-close"></a>
                            <span id="submit_hit_div"></span>
                        </div>
                    </div><!--end 模态对话框-->
                    <div id="skip_div1"></div><!--end skip_div-->
                    <button id="unfold_comment" class="uk-button uk-width-1-1" type="button">点击展开评论</button>
                    <article id="show_comment_article" class="uk-comment">
                        <!--fill by javascript:showComment()-->
                    </article><!--end 评论区-->
                </div><!--end comment_container-->
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
