<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 06.09.2023
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Игра завершена</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
<h1>Игра завершена</h1>

<p>Кажется, вы решили не входить в замок. Ваше приключение окончено.</p>

<p>Чтобы попробовать снова, <form action="GameOverServlet" method="post">
  <input type="submit" class="continue-button" value="нажмите тут">
</form>.</p>

  <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>
