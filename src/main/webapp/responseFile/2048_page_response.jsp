<%@ page import="org.json.JSONObject" %>
<%@ page import="com.ysu.zyw.support.Game2048PageJsonFactory" %>
<%@ page import="com.ysu.zyw.service.entity.Ranking" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@ page import="com.ysu.zyw.service.managementlogic.RankingManagement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
        /**
         * 获得 rankingManagement
         */
    ApplicationContext bf = new ClassPathXmlApplicationContext("beans.xml");
    RankingManagement rankingManagement = (RankingManagement)bf.getBean("rankingManagement");


        /**
         * 业务
         */
    response.setHeader("Cache-Control", "no-store");

    String game_2048_page_request = request.getParameter("game_2048_page_request");

        /**
         * 获得排行榜事件处理
         * 返回排行榜前三对应的 JSONObject
         */
    if(game_2048_page_request.equals("get_ranking")) {
        List<Ranking> rankingList = rankingManagement.getRankingTopThree();
        JSONObject jsonObject = Game2048PageJsonFactory.getRankingJSONObject(rankingList);
        response.getWriter().write(jsonObject.toString());
    }

        /**
         * 提交分数事件处理
         * 保存 Ranking
         */
    if(game_2048_page_request.equals("submit_ranking")) {
        String player_name = request.getParameter("player_name");
        Integer score = Integer.parseInt(request.getParameter("score"));
        rankingManagement.saveRanking(new Ranking(player_name, score));
    }
%>