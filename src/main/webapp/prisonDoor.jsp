<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 14.09.2023
  Time: 14:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Тюремная дверь</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Тюремная дверь</h1>
    <p>Вы видете мрачное помещение, которое несомненно заставляет вашу душу дрожать.</p>
    <p>Стены этой комнаты, кажется, впитали бесчисленные крики и страдания тех, кто ранее входил в эту тьму.</p>
    <p>Леденящий ужас тех, кто здесь был раньше, передается и вам.</p>
    <form action="PrisonDoorServlet" method="post">
        <input type="submit" class="continue-button" value="Вернуться в коридор">
    </form>

    <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>

