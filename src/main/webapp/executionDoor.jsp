<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 14.09.2023
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Исполнение</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
  <h1>Палата Исполнения</h1>

  <p>Повисла атмосфера страха и ужаса. В этой мрачной комнате остались следы пыток, будто они только что произошли. Стены украшают орудия пыток со следами крови и грязи, а воздух пропитан антисанитарией.</p>

  <p>Скрип дверей, крики, стоны... Вы представляете, что чувствовали люди, которых сюда приводили.</p>

  <p>Вы чувствуете, как будто вас наблюдают, но вокруг никого нет. Зловещая тишина лишь усиливает ваш страх.</p>

  <p>На стене висит тусклое зеркало, в котором отражается ваш испуганный взгляд.</p>

  <p>Что вы хотите сделать?</p>

  <form action="ExecutionDoorServlet" method="post">
    <label><input type="radio" name="action" value="returnToCorridor"> Вернуться в коридор</label><br>
    <input type="submit" class="continue-button" value="Продолжить">
  </form>

  <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>

