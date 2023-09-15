<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.09.2023
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Прихожая: Камин</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Вы находитесь у камина</h1>
    <c:choose>

        <c:when test="${!player.blueKeyTaken}">
            <p>Перед вами мрачный камин, на котором лежит ключ с синей лентой.</p>
            <p>Взять ключ?</p>
            <form action="FireplaceServlet" method="post">
                <label><input type="radio" name="action" value="takeKey"> Да</label><br>
                <label><input type="radio" name="action" value="goToEntryway"> Нет</label><br>
                <input type="submit" class="continue-button" value="Продолжить">
            </form>
        </c:when>
        <c:otherwise>
            <p>Вы видите пустой камин. Ключ уже в ваших атрибутах.</p>
            <form action="FireplaceServlet" method="post">
                <input type="hidden" name="action" value="goToEntryway">
                <input type="submit" class="continue-button" value="Продолжить">
            </form>
        </c:otherwise>
    </c:choose>

    <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>


