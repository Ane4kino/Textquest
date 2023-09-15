<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Белая дверь</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <img src="resources/white_light.jpg" alt="Белый свет" width="300" height="200">
  <h1>Поздравляем!</h1>
  <p>Вы преодолели все трудности этого загадочного замка и увидели голубое небо еще раз, что стало символом вашего освобождения.
    Ваше решение и смекалка привели вас к этому моменту, и теперь, выйдя с этого замка, вы осознаете, что это было, безусловно, лучшее решение в вашей жизни.
    Поздравляем вас с успешным завершением этого увлекательного приключения! Вам удалось пройти через ${player.doorsOpened} дверей, найти ${player.keysCollected} ключей и сыграть всего ${player.gamesPlayed} раз(а). Спасибо за участие в этой истории, и удачи вам в следующем вызове!</p>
  <br><br>
  <p>Возможно вам захочется улучшить свой результат и попробовать пройти квест еще раз?.</p>
  <br>
  <form action="RestartQuestServlet" method="post">
    <input type="submit" class="continue-button" value="Перезапустить квест">
  </form>

</div>
</body>
</html>

