<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 14.09.2023
  Time: 13:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Тюремный коридор</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Тюремный коридор</h1>

    <p>Вы находитесь в темном коридоре, который оказался тюремным. Воздух насыщен запахами старого камня и влаги. Стены покрыты плесенью и мхом, а фактуры камня кажутся холодными и влажными на ощупь.</p>

    <p>Пред вами три двери:</p>

    <ul>
        <li>Дверь с надписью "Казни" на нижней стене.</li>
        <li>Деревянная дверь с облупившейся краской на правой стене.</li>
        <li>Дверь с надписью "Тюрьма" на верхней стене.</li>
    </ul>

    <p>Какое действие вы хотите предпринять?</p>

    <form action="PrisonCorridorServlet" method="post">
        <label><input type="radio" name="action" value="executionDoor"> Открыть дверь с надписью "Казни"</label><br>
        <label><input type="radio" name="action" value="weaponRoom"> Открыть деревянную дверь с облупившейся краской</label><br>
        <label><input type="radio" name="action" value="prisonDoor"> Открыть дверь с надписью "Тюрьма"</label><br>
        <label><input type="radio" name="action" value="returnToHallway"> Вернуться обратно в прихожую</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
    </form>

    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

