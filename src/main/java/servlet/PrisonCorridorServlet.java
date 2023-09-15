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

        if (action != null) {
            if ("executionDoor".equals(action)) {
                player.setCurrentPlayerRoom("executionDoor");
                nextPage = "executionDoor.jsp";
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

        } else {
            request.setAttribute("error", "Выберите действие перед продолжением.");
            request.getRequestDispatcher("your_error_page.jsp").forward(request, response);
            return;
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }

}

