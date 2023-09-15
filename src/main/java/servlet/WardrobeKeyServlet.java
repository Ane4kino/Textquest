package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebServlet("/WardrobeKeyServlet")
public class WardrobeKeyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if (action != null) {
            if ("openDoor".equals(action)) {
                if (player.getCurrentPlayerRoom().equals("relaxRoom")) {
                    player.setCurrentPlayerRoom("bedroom");
                    nextPage = "bedroom.jsp";
                    player.openDoor();
                    player.setBlueDoorTaken(true);
                } else if (player.getCurrentPlayerRoom().equals("bedroom")) {
                    player.setCurrentPlayerRoom("relaxRoom");
                    nextPage = "relaxRoom.jsp";
                    player.openDoor();
                    player.setBlueDoorTaken(true);
                }
            } else if ("return".equals(action)) {
                if (player.getCurrentPlayerRoom().equals("relaxRoom")) {
                    player.setCurrentPlayerRoom("relaxRoom");
                    nextPage = "relaxRoom.jsp";
                } else if (player.getCurrentPlayerRoom().equals("bedroom")) {
                    player.setCurrentPlayerRoom("bedroom");
                    nextPage = "bedroom.jsp";
                }
            } else if ("goToRoom".equals(action)) {
                if (player.getCurrentPlayerRoom().equals("relaxRoom")) {
                    player.setCurrentPlayerRoom("bedroom");
                    nextPage = "bedroom.jsp";
                    player.openDoor();
                } else if (player.getCurrentPlayerRoom().equals("bedroom")) {
                    player.setCurrentPlayerRoom("relaxRoom");
                    nextPage = "relaxRoom.jsp";
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

