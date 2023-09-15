<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Спальня Графа Дракулы</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Спальня Графа Дракулы</h1>
  <p>Вы находитесь в просторной и мрачной спальне Графа Дракулы. Все в этой комнате излучает атмосферу старинной роскоши и ужаса. </p>

  <p>По правой стене вы замечаете выход в сад. Возможно, впустив свежий воздух, вы чувствуете себя немного бодрее.</p>

  <p>В нижней части комнаты стоит массивный дубовый шкаф, украшенный резьбой. Он кажется очень старым и таинственным.</p>
  <p>По верхней стене окна, занавешеные тяжелыми партьерами, шитие золотом</p>

  <p>Что вы хотите сделать?</p>

  <form action="BedroomServlet" method="post">
    <label><input type="radio" name="action" value="goToGarden"> Пойти в сад</label><br>
    <label><input type="radio" name="action" value="approachWardrobe"> Подойти к шкафу</label><br>
    <label><input type="radio" name="action" value="exploreHiddenDoor"> Войти в дверь за гобеленом</label><br>
    <input type="submit" value="Продолжить" class="continue-button">
  </form>

  <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>

