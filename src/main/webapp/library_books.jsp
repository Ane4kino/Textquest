<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Шкаф с книгами</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Шкаф с книгами</h1>

  <c:choose>
    <c:when test="${player.yellowKeyTaken}">
      <p>Вы уже взяли желтый ключ из этого шкафа.</p>
      <form action="LibraryBooksServlet" method="post">
        <input type="hidden" name="action" value="goToEntryway">
        <input type="submit" class="continue-button" value="Продолжить">
      </form>
    </c:when>
    <c:otherwise>
      <p>Под вами скрипнула половица, и вы почувствовали, что наступили на что-то. Одна из книг отодвинулась, и вы замечаете, что под ней лежит желтый ключ.</p>
      <p>Хотите ли вы взять этот желтый ключ?</p>
      <form action="LibraryBooksServlet" method="post">
        <label><input type="radio" name="action" value="takeYellowKey"> Да</label><br>
        <label><input type="radio" name="action" value="leaveKey"> Нет</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
      </form>
    </c:otherwise>
  </c:choose>

  <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

