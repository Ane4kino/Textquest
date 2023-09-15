package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/WardrobeServlet")
public class WardrobeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("goToWardrobeDoor".equals(action)) {
            nextPage = "wardrobeKey.jsp";
        } else if ("leaveWardrobe".equals(action)) {
            if (player.getCurrentPlayerRoom().equals("relaxRoom")) {
                player.setCurrentPlayerRoom("relaxRoom");
                nextPage = "relaxRoom.jsp";
            } else if (player.getCurrentPlayerRoom().equals("bedroom")) {
                player.setCurrentPlayerRoom("bedroom");
                nextPage = "bedroom.jsp";
            }
        }
        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}

