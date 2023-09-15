package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/PrisonCorridorServlet")
public class PrisonCorridorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("executionDoor".equals(action)) {
            player.setCurrentPlayerRoom("executionRoom");
            nextPage = "executionRoom.jsp";
            player.openDoor();
        } else if ("weaponRoom".equals(action)) {
            player.setCurrentPlayerRoom("weaponRoom");
            nextPage = "weaponRoom.jsp";
            player.openDoor();
        } else if ("prisonDoor".equals(action)) {
            player.setCurrentPlayerRoom("prisonDoor");
            nextPage = "prisonDoor.jsp";
            player.openDoor();
        } else if ("returnToHallway".equals(action)) {
            player.setCurrentPlayerRoom("hallway");
            player.openDoor();
            nextPage = "hallway.jsp";
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }  }
