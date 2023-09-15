<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Загадочная дверь</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

<div class="description-container">
    <h1>Загадочная дверь</h1>

<c:choose>
    <c:when test="${player.yellowDoorTaken}">
        <p>Дверь уже открыта входи</p>
        <form action="SecretExecutionDoorServlet" method="post">
            <input type="hidden" name="action" value="goToRoom">
            <input type="submit" class="continue-button" value="Открыть дверь">
        </form>
    </c:when>

    <c:when test="${player.yellowKeyTaken && !player.yellowDoorTaken}">
        <p>Дверь оказалась заперта, и для её открытия необходим желтый ключ.</p>
        <p>У вас есть желтый ключ. Вы хотите открыть эту дверь?</p>
            <form action="SecretExecutionDoorServlet" method="post">
                <label><input type="radio" name="action" value="openDoor"> Да</label>
                <label><input type="radio" name="action" value="return"> Нет</label>
                <br>
                <input type="submit" class="continue-button" value="Открыть дверь">
            </form>
        </c:when>
        <c:otherwise>
            <p>Дверь оказалась заперта, и для её открытия необходим желтый ключ.</p>
            <p>У вас нет желтого ключа. Вам, возможно, стоит попробовать найти его в других помещениях замка.</p>
            <form action="SecretExecutionDoorServlet" method="post">
                <input type="hidden" name="action" value="return">
                <input type="submit" class="continue-button" value="Вернуться">
            </form>
        </c:otherwise>
    </c:choose>

    <jsp:include page="playerInfo.jsp"/>

</div>
</body>
</html>
