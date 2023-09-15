<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Информация о игроке</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<table class="player-info">
    <tr>
        <th>Имя игрока</th>
        <td>${player.name}</td>
    </tr>
    <tr>
        <th>Количество открытых дверей</th>
        <td>${player.doorsOpened}</td>
    </tr>
    <tr>
        <th>Количество ключей</th>
        <td>${player.keysCollected}</td>
    </tr>
    <tr>
        <th>Ключи</th>
        <td><c:if test="${player.blueKeyTaken}">
            <img src="resources/blau_key_image.png" alt="Ключ" class="key-image">
        </c:if>
            <c:if test="${player.yellowKeyTaken}">
                <img src="resources/yellow_key_image.png" alt="Ключ" class="key-image">
            </c:if>
            <c:if test="${player.redKeyTaken}">
                <img src="resources/red_key_image.png" alt="Ключ" class="key-image">
            </c:if>
        </td>
    </tr>
    <tr>
        <th>Количество попыток</th>
        <td>${player.gamesPlayed}</td>
    </tr>
</table>
</body>
</html>
