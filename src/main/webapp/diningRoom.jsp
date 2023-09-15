<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.09.2023
  Time: 18:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Столовая</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
<h1>Вы находитесь в столовой</h1>

<p>Средневековая столовая поражает вас своей роскошью. Стол накрыт серебряной посудой и бархатными скатертями.
    Весь интерьер дышит богатством и роскошью. По верхней стене - окна, вокруг которых свисают широкие шторы из густого, бархатистого материала.</p>
<p>По правой стене есть две двери. Одна - массивная синяя, украшенная яркими и красочными узорами. Серебряные ручки кажутся ожившими сказочными существами, приглашающими вас к приключениям.
<p>На той же стене, но ближе к низу находится дверь золотого цвета. Она выглядит как величественное произведение искусства. Поверхность двери покрыта позолотой, которая мягко блескнет, когда на неё падают лучи света.</p>
</p><p>На стене снизу имеется двустворчатая дверь, которая выглядит так, будто она прямо из средневековой сказки. Эта мощная дверь выполнена из массивного дуба и украшена изысканной резьбой, отображающей сцены из древних легенд и битв.
</p>
<form action="DiningRoomServlet" method="post">
    <label><input type="radio" name="action" value="goToLivingRoom"> Открыть двустворчатую дверь</label><br>
    <label><input type="radio" name="action" value="goToMusicRoom"> Открыть синюю дверь</label><br>
    <label><input type="radio" name="action" value="goToLibrary"> Открыть золотую дверь</label><br>
    <input type="submit" class="continue-button" value="Продолжить">
</form>

    <jsp:include page="playerInfo.jsp" />

</div>

</body>
</html>

