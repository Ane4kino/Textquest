<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Сад графа Дракулы</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Сад графа Дракулы</h1>

    <p>Вы находитесь в прекрасном саду графа Дракулы. В этом уголке природы цветы цветут яркими и красочными, создавая магическую атмосферу. Граф использовал этот сад для отдыха и спасения от депрессий.</p>

    <p>В центре сада стоит особенный цветок, который выделяется среди остальных своей красотой. Но что-то в нем кажется неестественным, как будто это искусственный цветок среди живых.</p>

    <p>Что вы хотите сделать?</p>

    <form action="GardenServlet" method="post">
        <label><input type="radio" name="action" value="exitGarden"> Выйти из сада</label><br>
        <label><input type="radio" name="action" value="approachFlower"> Подойти к искусственному цветку</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
    </form>

    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

