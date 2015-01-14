<%@ page import="java.util.Date" %>
<%@ page import="org.json.JSONObject" %>
<%@ page import="com.ysu.zyw.support.DiaryPageJsonFactory" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="com.ysu.zyw.service.managementlogic.DiaryManagement" %>
<%@ page import="com.ysu.zyw.service.entity.Diary" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ysu.zyw.service.managementlogic.CommentManagement" %>
<%@ page import="com.ysu.zyw.service.entity.Comment" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        /**
         * 获得 diaryManagement commentManagement
         */
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");
    DiaryManagement diaryManagement = (DiaryManagement)bf.getBean("diaryManagement");
    CommentManagement commentManagement = (CommentManagement)bf.getBean("commentManagement");


        /**
         * 业务
         */
    response.setHeader("Cache-Control", "no-store");

    String diary_request = request.getParameter("diary_page_request");

        /**
         * 初始化日志列表的事件处理
         * 返回所有文章标题组成的 JSONObject
         */
    if(diary_request.equals("init_diary_select")) {
        List<Diary> diaryList = diaryManagement.getAllDiary();
        JSONObject jsonObject = DiaryPageJsonFactory.getDiaryTitlesJSONObject(diaryList);
        response.getWriter().write(jsonObject.toString());
    }

        /**
         * 点击日志列表的事件处理
         * 返回请求的文章组成的 JSONObject
         */
    if(diary_request.equals("select_diary")) {
        Integer diary_index = Integer.parseInt(request.getParameter("selected_diary"));
        Diary diary = diaryManagement.getDiaryById(diary_index);
        JSONObject jsonObject = DiaryPageJsonFactory.getDiaryJSONObject(diary);
        response.getWriter().write(jsonObject.toString());
    }

        /**
         * 提交评论事件处理
         * 保存 Comment
         */
    if(diary_request.equals("submit_comment")) {
        Integer diary_id = Integer.parseInt(request.getParameter("diary_id"));
        String author = request.getParameter("author");
        String comment = request.getParameter("comment");
        commentManagement.saveComment(diary_id, new Comment(author, comment));
        response.getWriter().write("success");
    }

        /**
         * 显示评论事件处理
         * 返回请求的文章对应的 Comments 组成的 JSONObject
         */
    if(diary_request.equals("show_comment")) {
        Integer diary_id = Integer.parseInt(request.getParameter("diary_id"));
        List<Comment> commentList = commentManagement.getDiaryComments(diary_id);
        JSONObject jsonObject = DiaryPageJsonFactory.getDiaryCommentsJSONObject(commentList);
        response.getWriter().write(jsonObject.toString());
    }
%>