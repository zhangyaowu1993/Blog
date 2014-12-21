<%--
  Created by IntelliJ IDEA.
  User: zhang_yao_wu1993
  Date: 14/12/21
  Time: 下午8:56
--%>

<%
        /**
         * 用来接受客户端 2048 游戏结束时的用户名和分数 返回一个 label 备用
         */
    String playerName = request.getParameter("name");
    Integer playerScore = Integer.parseInt(request.getParameter("score"));
    System.out.println(playerName + " " + playerScore);

    response.getWriter().write("<label>hello</label>");
%>

