package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "DiningRoomServlet", urlPatterns = "/DiningRoomServlet")
public class DiningRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("goToLivingRoom".equals(action)) {
            player.setCurrentPlayerRoom("livingRoom");
            nextPage = "livingRoom.jsp";
            player.openDoor();
        } else if ("goToMusicRoom".equals(action)) {
            player.setCurrentPlayerRoom("musicRoom");
            nextPage = "musicRoom.jsp";
            player.openDoor();
        } else if ("goToLibrary".equals(action)) {
            player.setCurrentPlayerRoom("library");
            nextPage = "library.jsp";
            player.openDoor();
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}
