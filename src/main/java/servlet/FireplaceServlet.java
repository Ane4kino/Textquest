package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "FireplaceServlet", urlPatterns = "/FireplaceServlet")
public class FireplaceServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("takeKey".equals(action)) {
            player.setKeysCollected(player.getKeysCollected() + 1);
            player.setBlueKeyTaken(true);
            player.setCurrentPlayerRoom("hallway");
            nextPage = "hallway.jsp";
        } else if("goToEntryway".equals(action)) {
            player.setCurrentPlayerRoom("hallway");
            nextPage = "hallway.jsp";
        }
        session.setAttribute("player", player);
        response.sendRedirect(nextPage);
    }
}


