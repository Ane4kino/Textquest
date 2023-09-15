<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Ошибка</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Ошибка</h1>

  <p>Для того чтобы продолжить игру, нужно выбрать один из вариантов действия</p>
  <form action="ErrorServlet" method="post">
    <input type="submit" class="continue-button" value="Продолжить">
  </form>
</div>
</body>
</html>
