<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Сундук</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Сундук открыт</h1>
    <img src="resources\LICi.gif" alt="Белый свет" width="300" height="300">
    <p>О нет! Это оказался худший выбор в вашей жизни. Внутри сундука вы обнаруживаете самого графа, и он нападает на
        вас. Это последнее,что вы помните.</p>

    <p>К сожалению, ваше приключение завершается неудачей.</p>

    <p>Чтобы попробовать снова,
    <form action="GameOverServlet" method="post">
        <input type="submit" class="continue-button" value="нажмите тут">
    </form>
    </p>

    <jsp:include page="playerInfo.jsp"/>

</div>
</body>
</html>

