<%--
  Created by IntelliJ IDEA.
  User: zhang_yao_wu1993
  Date: 14/12/20
  Time: 下午9:48
--%>
<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>2048</title>
    <script type="text/javascript" src="other/jquery-2.1.3.js"></script>
    <script type="text/javascript" src="other/game2048.js"></script>
    <link href="other/game2048.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <header>
        <a id="new_game_button" href="javascript:newgame()">New Game</a>
        <p>Score : <span id="score">0</span></p>
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
    </header>
</body>
</html>
