<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Шкаф - Синий ключ</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Дверь шкафа заперта</h1>
    <c:choose>
        <c:when test="${player.blueDoorTaken}">
            <p>Дверь уже открыта входи</p>
            <form action="WardrobeKeyServlet" method="post">
                <input type="hidden" name="action" value="goToRoom">
                <input type="submit" class="continue-button" value="Открыть дверь">
            </form>
        </c:when>
        <c:when test="${player.blueKeyTaken && !player.blueDoorTaken}">
            <p>Дверь оказалась заперта, и для её открытия необходим синий ключ.</p>
            <p>У вас есть синий ключ. Хотите ли вы им открыть дверь?</p>
            <form action="WardrobeKeyServlet" method="post">
                <label><input type="radio" name="action" value="openDoor"> Да</label>
                <label><input type="radio" name="action" value="return"> Нет</label>
                <br>
                <input type="submit" class="continue-button" value="Открыть дверь">
            </form>
        </c:when>
        <c:otherwise>
            <p>Дверь оказалась заперта, и для её открытия необходим синий ключ.</p>
            <p>Вы можете попробовать искать синий ключ в других частях замка.</p>
            <form action="WardrobeKeyServlet" method="post">
                <input type="hidden" name="action" value="return">
                <input type="submit" class="continue-button" value="Вернуться">
            </form>
        </c:otherwise>
    </c:choose>

    <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>

