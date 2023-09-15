<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.09.2023
  Time: 18:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Библиотека графа Дракулы</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Добро пожаловать в библиотеку графа Дракулы</h1>

    <p>Вы находитесь в огромной библиотеке, которая кажется не имеет конца. Полки, уставленные книгами и свитками,
        возвышаются до потолка. В этой библиотеке нет окон, лишь тусклый свет от свечей бродит между полками, создавая
        жуткую атмосферу.</p>

    <p>На столах и полках расположены старинные книги в кожаных переплетах, заслуживающие внимания любого исследователя.
        Среди них вы замечаете редкие свитки с загадочными рисунками и текстами, написанными на неизвестных языках.</p>

    <p>В углу библиотеки стоит глобус, покрытый пылью времени. На глобусе вы видите странные обозначения и места,
        которые уже давно забыты миром.</p>

    <p>А еще здесь находится потайная дверь по нижней стене и золотая дверь по левой стане.</p>

    <form action="LibraryServlet" method="post">
        <label><input type="radio" name="action" value="goToDiningRoom"> Открыть золотую дверь</label><br>
        <label><input type="radio" name="action" value="exploreBooks"> Подойти к книгам и свиткам</label><br>
        <label><input type="radio" name="action" value="goToSecretDoor"> Зайти в потайную дверь</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
    </form>
    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

