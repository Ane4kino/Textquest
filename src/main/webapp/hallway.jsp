
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 07.09.2023
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Прихожая</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
<h1>Вы находитесь в прихожей</h1>

<p>Это темное и мрачное помещение, освещенное только несколькими мерцающими свечами на стенах. </p>
<p>Дверь входная за вами закрылась, и путь обратно кажется далеким. Выбора нет - перед вами только путь глубже внутрь замка.
На стене напротив вы замечаете небольшую дверцу, скрытую за кованой решеткой. Кажется, потайная дверь - это необычная деталь в таком месте.
В правом углу комнаты стоит старинный камин, из которого доносится слабый запах древесного дыма.
Слева также имеется деревянная дверь, изысканно украшенная резьбой. Она выглядит очень привлекательно.
На стенах висят потемневшие картины, изображающие некогда важные события. Но время не щадит даже искусство.
На стене справа виднеется еще одна дверь, и, кажется, за ней скрывается темный коридор замка.</p>

<p>Что вы хотите сделать?</p>

<form action="HallwayServlet" method="post">
    <label><input type="radio" name="action" value="goToExit"> Входная дверь</label><br>
    <label><input type="radio" name="action" value="goToLibrary"> Потайная дверь</label><br>
    <label><input type="radio" name="action" value="goToFireplace"> Камин</label><br>
    <label><input type="radio" name="action" value="goToLivingRoom"> Открыть резную дверь</label><br>
    <label><input type="radio" name="action" value="goToPrisonCorridor"> Выход в тюремный коридор</label><br>
    <input type="submit" class="continue-button" value="Продолжить">
</form>
    <jsp:include page="playerInfo.jsp" />

</div>

</body>
</html>
