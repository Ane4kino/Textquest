package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/EnterCastleServlet")
public class EnterCastleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String enterCastle = request.getParameter("enterCastle");
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

//        int i = 1;//значит игрок играл уже минимум 1 раз
//        if (player.getGamesPlayed() >= i) {
//            player.setYellowDoorTaken(false);
//            player.setBlueDoorTaken(false);
//            player.setBlueKeyTaken(false);
//            player.setYellowKeyTaken(false);
//            player.setRedKeyTaken(false);
//            player.setKeysCollected(0);
//            player.setDoorsOpened(0);
//        }
        if ("yes".equals(enterCastle)) {
            player.setCurrentPlayerRoom("hallway");
            response.sendRedirect("hallway.jsp");
            player.openDoor();
        } else {
            response.sendRedirect("gameover.jsp");
        }
        session.setAttribute("player", player);
    }
}

