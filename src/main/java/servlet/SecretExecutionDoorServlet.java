package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/SecretExecutionDoorServlet")
public class SecretExecutionDoorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if (action != null) {
            if ("openDoor".equals(action)) {
                if (player.getCurrentPlayerRoom().equals("weaponRoom")) {
                    player.setCurrentPlayerRoom("secretExecutionRoom");
                    nextPage = "secretExecutionRoom.jsp";
                    player.openDoor();
                    player.setYellowDoorTaken(true);
                } else if (player.getCurrentPlayerRoom().equals("secretExecutionRoom")) {
                    player.setCurrentPlayerRoom("weaponRoom");
                    nextPage = "weaponRoom.jsp.jsp";
                    player.openDoor();
                    player.setYellowDoorTaken(true);
                }
            } else if ("return".equals(action)) {
                if (player.getCurrentPlayerRoom().equals("secretExecutionRoom")) {
                    player.setCurrentPlayerRoom("secretExecutionRoom");
                    nextPage = "secretExecutionRoom.jsp";
                } else if (player.getCurrentPlayerRoom().equals("weaponRoom")) {
                    player.setCurrentPlayerRoom("weaponRoom");
                    nextPage = "weaponRoom.jsp";
                }
            } else if ("goToRoom".equals(action)) {
                if (player.getCurrentPlayerRoom().equals("secretExecutionRoom")) {
                    player.setCurrentPlayerRoom("weaponRoom");
                    nextPage = "weaponRoom.jsp";
                    player.openDoor();
                } else if (player.getCurrentPlayerRoom().equals("weaponRoom")) {
                    player.setCurrentPlayerRoom("secretExecutionRoom");
                    nextPage = "secretExecutionRoom.jsp";
                    player.openDoor();
                }
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

