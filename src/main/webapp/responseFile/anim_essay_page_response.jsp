<%@ page import="org.json.JSONObject" %>
<%@ page import="com.ysu.zyw.support.AnimEssayPageJsonFactory" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="com.ysu.zyw.service.managementlogic.EssayManagement" %>
<%@ page import="com.ysu.zyw.service.entity.Essay" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        /**
         * 获得 essayManagement
         */
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");
    EssayManagement essayManagement = (EssayManagement)bf.getBean("essayManagement");


        /**
         * 业务
         */
    response.setHeader("Cache-Control", "no-store");

    String essay_page_request = request.getParameter("anim_essay_request");

        /**
         * 请求条目事件处理
         * 返回随机组成的 10 条条目组成的 JSOBObject
         */
    if(essay_page_request.equals("get_essay_list")) {
        List<Essay> essayList = essayManagement.getEssayStochastic(10);
        JSONObject jsonObject = AnimEssayPageJsonFactory.getAnimEssayJSONObject(essayList);
        response.getWriter().write(jsonObject.toString());
    }
%>

