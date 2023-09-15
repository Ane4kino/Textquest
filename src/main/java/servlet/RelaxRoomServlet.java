package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/RelaxRoomServlet")
public class RelaxRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("openWardrobe".equals(action)) {
            player.setCurrentPlayerRoom("relaxRoom");
            nextPage = "wardrobe.jsp";
            player.openDoor();
        }
        else if ("goToCorridor".equals(action)) {
            player.setCurrentPlayerRoom("weaponRoom");
            nextPage = "weaponRoom.jsp";
            player.openDoor();
        }
        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}
