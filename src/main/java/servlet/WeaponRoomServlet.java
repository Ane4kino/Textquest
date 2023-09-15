package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/WeaponRoomServlet")
public class WeaponRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("relaxRoom".equals(action)) {
            player.setCurrentPlayerRoom("relaxRoom");
            nextPage = "relaxRoom.jsp";
            player.openDoor();
        } else if ("prisonCorridor".equals(action)) {
            player.setCurrentPlayerRoom("prisonCorridor");
            nextPage = "prisonCorridor.jsp";
            player.openDoor();
        } else if ("secretExecutionRoom".equals(action)) {
            player.setCurrentPlayerRoom("weaponRoom");
            nextPage = "secretExecutionDoor.jsp";
            player.openDoor();
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}

