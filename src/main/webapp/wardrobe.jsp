<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 13.09.2023
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Шкаф</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Вы находитесь перед шкафом</h1>
    <p>Вы внимательно осматриваете шкаф, который стоит в углу комнаты. Он выглядит довольно обыденно, но что-то в нем привлекает ваше внимание.</p>
    <p>Внутри шкафа, среди одежды и вещей, вы замечаете нечто странное. Там, где должен быть задняя стенка шкафа, находится потайная черная мрачная дверь.</p>
    <p>Судя по всему, это дверь в неизведанные места замка. Что вы хотите сделать?</p>

    <form action="WardrobeServlet" method="post">
        <label><input type="radio" name="action" value="goToWardrobeDoor"> Попробовать открыть дверь</label><br>
        <label><input type="radio" name="action" value="leaveWardrobe"> Выйти из шкафа</label><br>
        <input type="submit" class="continue-button" value="Продолжить">
    </form>

    <jsp:include page="playerInfo.jsp" />

</div>
</body>
</html>

