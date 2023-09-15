<%--<jsp:useBean id="player" scope="request" class="model.Player"/>--%>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 24.08.2023
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Добро пожаловать в Замок Графа Дракулы</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<div class="welcome-container">
  <img src="resources/castle-image.jpg" alt="Замок Графа Дракулы" class="castle-image">
  <h1>Добро пожаловать в Текстовую Квест-Игру!</h1>
<p>Вам предстоит исследовать замок, находить ключи и двери, чтобы достичь победы.Ваша цель - дойти до последней комнаты и открыть дверь, используя найденные ключи. Не забудьте собирать ключи и следить за описанием комнаты. Описание комнаты будет исходя из карты вид сверху, все помещения прямоугольные и имеют стороны, по которым и будут располагаться двери и окна. Запоминай расположение и ты не заблудишься.</p>

<h2>Удачи в вашем приключении!</h2>

<form action="StartGameServlet" method="post">
  <label for="playerName">Введите ваше имя:</label>
  <input type="text" id="playerName" name="playerName">
  <input type="submit"  class="start-button" value="Начать игру">
</form>

</div>

</body>
</html>

