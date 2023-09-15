<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.09.2023
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Гостиная</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
<h1>Вы находитесь в гостиной</h1>

<p>Гостиная Графа Дракулы впечатляет своей роскошью. Вы видите окна, через которые проникают последние лучи солнца,
    отливающие красным. Мебель тяжелая и старинная, а на стенах висят портреты незнакомых вам людей.</p>
<p>На стене сверху имеется двустворчатая дверь, которая выглядит так, будто она прямо из средневековой сказки. Эта мощная дверь выполнена из массивного дуба и украшена изысканной резьбой, отображающей сцены из древних легенд и битв.
</p>
<p>По левой стене также имеется деревянная дверь, изысканно украшенная резьбой. Она выглядит очень привлекательно.</p>
<form action="LivingRoomServlet" method="post">
    <label><input type="radio" name="action" value="goToHallway">  Открыть резную дверь</label><br>
    <label><input type="radio" name="action" value="goToDiningRoom"> Открыть двустворчатую дверь</label><br>
    <input type="submit" class="continue-button" value="Продолжить">
</form>
    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

