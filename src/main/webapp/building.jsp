<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 06.09.2023
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- Created by IntelliJ IDEA. User: PC Date: 06.09.2023 Time: 13:25 To change this template use File | Settings | File Templates. --%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Описание Здания</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="description-container">
    <h1>Описание Здания</h1>
    <p>Добро пожаловать, ${player.name}</p>

    <p>Вы стоите перед мрачным и величественным замком, словно вышедшим из самых темных кошмаров. Замок высится перед
        вами, окруженный густой туман, который придает ему еще более мистический вид. Стены замка изготовлены из темного
        камня, словно они впитали в себя множество страшных событий, произошедших здесь на протяжении веков.</p>
    <br>
    <p>Вдалеке слышен тихий стук ветра, и вы чувствуете, что не одиноки в этом мрачном месте. Здесь скрываются множество
        секретов и опасностей, но только вы можете разгадать загадки замка и открыть дверь, которая ведет к тайнику
        графа.</p>

    <form action="EnterCastleServlet" method="post">
        <%--@declare id="entercastle"--%><label for="enterCastle">Вы хотите войти в замок?</label>
        <label>
            <input type="radio" name="enterCastle" value="yes">
        </label>Да
        <label>
            <input type="radio" name="enterCastle" value="no">
        </label>Нет
        <br>
        <input type="submit" value="Продолжить" class="continue-button">
    </form>

    <jsp:include page="playerInfo.jsp" />
</div>
</body>
</html>
