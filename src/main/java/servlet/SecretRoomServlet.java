package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/SecretRoomServlet")
public class SecretRoomServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("goToSecretExecutionRoom".equals(action)) {
            player.setCurrentPlayerRoom("secretExecutionRoom");
            nextPage = "secretExecutionRoom.jsp";
            player.openDoor();
        } else if ("openChest".equals(action)) {
            player.setCurrentPlayerRoom("chestLocked");
            nextPage = "chestLocked.jsp";
            player.openDoor();
        }else if ("goToWhiteDoor".equals(action)) {
            player.setCurrentPlayerRoom("whiteDoor");
            nextPage = "whiteDoor.jsp";
            player.openDoor();
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}

