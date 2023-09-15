<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 15.09.2023
  Time: 10:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Таинственная комната</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Таинственная комната</h1>
  <p>Вы оказались в комнате, в которой граф тайно наблюдал за казнями. Зеркало, казалось бы, было не настоящим, но через него вы могли видеть происходящее в соседнем помещении. Странное место, не так ли?</p>
  <p>В этой комнате есть две двери:</p>
  <ul>
    <li>Дверь, с затертой эмблемой, находится по правой стене.</li>
    <li>По той же стене, только ниже, есть еще одна дверь, но она почему-то очень низкая.</li>
  </ul>

  <form action="SecretExecutionRoom" method="post">
    <label><input type="radio" name="action" value="goToWeaponRoom"> Открыть дверь с эмблемой</label><br>
    <label><input type="radio" name="action" value="goToSecretRoom"> Открыть низкую дверь</label><br>
    <input type="submit" class="continue-button" value="Продолжить">
  </form>


  <jsp:include page="playerInfo.jsp"/>
</div>
</body>
</html>

