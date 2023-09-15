<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.09.2023
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Музыкальный салон</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
<h1>Добро пожаловать в музыкальный салон</h1>

<p>Вы находитесь в изысканном музыкальном салоне замка. Атмосфера воздает величие и искусство. Мягкий свет проникает сквозь арочные окна, создавая магическую атмосферу.</p>

<p>В уголке салона стоит рояль, рядом с которым находятся стулья и скамьи. Музыкальные инструменты, такие как скрипки, флейты и кларнеты, украшают стены и приглашают вас к звуковому путешествию.</p>

<p> На стене справа имеется проход за гобеленом.</p>

<p>По левой стене - массивная синяя дверь, украшенная яркими и красочными узорами. Серебряные ручки кажутся ожившими сказочными существами, приглашающими вас к приключениям.

<form action="MusicRoomServlet" method="post">
  <label><input type="radio" name="action" value="goToDiningRoom"> Открыть в синюю дверь</label><br>
  <label><input type="radio" name="action" value="exploreHiddenDoor"> Войти в дверь за гобеленом</label><br>
  <input type="submit" class="continue-button" value="Продолжить">
</form>
  <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

