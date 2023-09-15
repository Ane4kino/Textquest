package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/GardenServlet")
public class GardenServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("exitGarden".equals(action)) {
            player.setCurrentPlayerRoom("bedroom");
            nextPage = "bedroom.jsp";
        } else if ("approachFlower".equals(action)) {
            player.setCurrentPlayerRoom("flower");
            nextPage = "flower.jsp";
        }

        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}

