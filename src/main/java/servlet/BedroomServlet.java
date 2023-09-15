package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/BedroomServlet")
public class BedroomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if (action != null) {
            if (action.equals("goToGarden")) {
                player.setCurrentPlayerRoom("garden");
                player.openDoor();
                nextPage = "garden.jsp";
            } else if (action.equals("approachWardrobe")) {
                player.setCurrentPlayerRoom("bedroom");
                player.openDoor();
                nextPage = "wardrobe.jsp";
            } else if ("exploreHiddenDoor".equals(action)) {
                player.openDoor();
                player.setCurrentPlayerRoom("musicRoom");
                nextPage = "musicRoom.jsp";
            }
        }
        session.setAttribute("gameState", player);
        response.sendRedirect(nextPage);
    }
}

