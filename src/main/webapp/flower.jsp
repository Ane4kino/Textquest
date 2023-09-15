<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 13:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Искусственный цветок</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Искусственный цветок</h1>

  <c:choose>
    <c:when test="${!player.redKeyTaken}">
      <p>Вы подошли к искусственному цветку. На его блюдечке лежит красный ключ.</p>
      <p>Хотите ли вы взять красный ключ?</p>
      <form action="FlowerServlet" method="post">
        <label><input type="radio" name="action" value="takeRedKey"> Да</label><br>
        <label><input type="radio" name="action" value="leaveKey"> Нет</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
      </form>
    </c:when>
    <c:otherwise>
      <p>Вы уже взяли красный ключ у искусственного цветка.</p>
      <form action="FlowerServlet" method="post">
        <input type="hidden" name="action" value="goToGarden">
        <input type="submit" class="continue-button" value="Продолжить">
      </form>
    </c:otherwise>
  </c:choose>

  <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>

