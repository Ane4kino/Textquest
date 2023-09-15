<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Секретная комната</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Секретная комната</h1>
  <p>Вы вошли в дверь, которая оказалась необычно низкой, пришлось наклониться. В центре комнаты стоит стол, на котором расположен гигантский сундук. Возможно, это сокровища графа?</p>
  <p>По нижней стене видна белая дверь.</p>

  <form action="SecretRoomServlet" method="post">
    <label><input type="radio" name="action" value="goToSecretExecutionRoom"> Пойти обратно в таинственную комнату казни</label><br>
    <label><input type="radio" name="action" value="openChest"> Осмотреть сундук</label><br>
    <label><input type="radio" name="action" value="goToWhiteDoor"> Пойти к белой двери</label><br>
    <input type="submit" class="continue-button" value="Продолжить">
  </form>

  <jsp:include page="playerInfo.jsp"/>
</div>
</body>
</html>

