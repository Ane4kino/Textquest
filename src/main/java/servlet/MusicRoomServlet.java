package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "MusicRoomServlet", urlPatterns = "/MusicRoomServlet")
public class MusicRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("goToDiningRoom".equals(action)) {
            player.setCurrentPlayerRoom("diningRoom");
            nextPage = "diningRoom.jsp";
            player.openDoor();
        } else if ("exploreHiddenDoor".equals(action)) {
            player.setCurrentPlayerRoom("bedroom");
            nextPage = "bedroom.jsp";
            player.openDoor();
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}
