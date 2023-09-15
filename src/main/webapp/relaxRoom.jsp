<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Комната отдыха графа Дракулы</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Комната отдыха графа Дракулы</h1>

    <p>Вы находитесь в уютной комнате, предназначенной для отдыха и релаксации графа Дракулы. Здесь царит атмосфера спокойствия и комфорта.</p>

    <p>По верхней стене стоит стоит массивный дубовый шкаф, украшенный резьбой. Он кажется очень старым и таинственным.</p>

    <p>По нижней стене расположена простая деревянная дверь, которая, возможно, ведет в другую часть замка.</p>

    <p>Что вы хотите сделать?</p>

    <form action="RelaxRoomServlet" method="post">
        <label><input type="radio" name="action" value="openWardrobe"> Посмотреть в шкаф</label><br>
        <label><input type="radio" name="action" value="goToCorridor"> Пойти к двери</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
    </form>

    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>
