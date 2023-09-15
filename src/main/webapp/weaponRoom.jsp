<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Оружейная комната</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Оружейная комната времен Графа Дракулы</h1>
    <p>Вы оказались в оружейной комнате. Здесь, на стенах, висели самые разные виды оружия, от старинных мечей до арбалетов. Атмосфера наполняется аурой мистики и таинства, и эти стены хранят секреты прошлого.</p>

    <p>Перед вами три двери:</p>
    <ul>
        <li>Обычная деревянная дверь: По верхней стене, непримечательная и обыденная.</li>
        <li>Деревянная дверь с облупившейся краской: По левой стене. Кажется, что она давно не открывалась.</li>
        <li>Дверь с резной эмблемой: По левой стене ниже, на ней затерты временем рисунки, и вы не можете разобрать, что изображено.</li>
    </ul>

    <p>Какую дверь вы хотите выбрать?</p>

    <form action="WeaponRoomServlet" method="post">
        <label><input type="radio" name="action" value="relaxRoom"> Обычная деревянная дверь</label><br>
        <label><input type="radio" name="action" value="prisonCorridor"> Деревянная дверь с облупившейся краской</label><br>
        <label><input type="radio" name="action" value="secretExecutionRoom"> Дверь с резной эмблемой</label><br>
        <input type="submit" class="continue-button" value="Выбрать дверь">
    </form>

    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>
