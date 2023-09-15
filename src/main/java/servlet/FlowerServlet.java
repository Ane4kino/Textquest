package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/FlowerServlet")
public class FlowerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("takeRedKey".equals(action) && !player.isRedKeyTaken()) {
            player.setKeysCollected(player.getKeysCollected() + 1);
            player.setRedKeyTaken(true);
            nextPage = "garden.jsp";
            player.setCurrentPlayerRoom("garden");
        } else if ("goToGarden".equals(action)){
            nextPage = "garden.jsp";
            player.setCurrentPlayerRoom("garden");
        }
        session.setAttribute("player", player);
        response.sendRedirect(nextPage);

    }
}
