<%--
  Created by IntelliJ IDEA.
  User: zhang_yao_wu1993
  Date: 14/12/21
  Time: 下午8:56
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<%
    String playerName = request.getParameter("name");
    Integer playerScore = Integer.parseInt(request.getParameter("score"));
    System.out.println(playerName + " " + playerScore);
%>
</body>
</html>
