package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/GameOverServlet")
public class GameOverServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        player.setGamesPlayed(player.getGamesPlayed() + 1);
        if ( player.getGamesPlayed() >= 1) {

            player.setKeysCollected(0);
            player.setDoorsOpened(0);


            player.setRedDoorTaken(false);
            player.setBlueDoorTaken(false);
            player.setYellowDoorTaken(false);
            player.setRedKeyTaken(false);
            player.setBlueKeyTaken(false);
            player.setYellowKeyTaken(false);
        }
        session.setAttribute("player", player);
        response.sendRedirect("building.jsp");
    }
}


