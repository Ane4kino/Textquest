<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Закрытый сундук</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Закрытый сундук</h1>
    <p>Сундук покрыт толстым слоем пыли. Паутина, как сеть обвила его. Он оказался закрыт.</p>
    <c:choose>

        <c:when test="${player.redKeyTaken}">
            <p>Судя по форме замочной скважины, красный ключ как раз подходит. Он есть в атрибутах, хотите попробовать открыть сундук?</p>
            <form action="ChestActionServlet" method="post">
                <label><input type="radio" name="action" value="openChest"> Да</label><br>
                <label><input type="radio" name="action" value="return"> Нет</label><br>
                <input type="submit" class="continue-button" value="Продолжить">
            </form>
        </c:when>
        <c:otherwise>
            <p>Похоже, что его не открыть без особого ключа, граф наверное спрятал его где-то в замке</p>
            <form action="ChestActionServlet" method="post">
                <input type="hidden" name="action" value="return">
                <input type="submit" class="continue-button" value="Продолжить">
            </form>
        </c:otherwise>
    </c:choose>

    <jsp:include page="playerInfo.jsp"/>
</div>
</body>
</html>

