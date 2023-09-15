package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LibraryBooksServlet")
public class LibraryBooksServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if ("takeYellowKey".equals(action)) {
            if (!player.isYellowKeyTaken()) {
                player.setKeysCollected(player.getKeysCollected() + 1);
                player.setYellowKeyTaken(true);
                player.setCurrentPlayerRoom("library");
                nextPage = "library.jsp";
            }
        } else if ("leaveKey".equals(action)) {
            player.setCurrentPlayerRoom("library");
            nextPage = "library.jsp";
        }else if("goToEntryway".equals(action)) {
            player.setCurrentPlayerRoom("library");
            nextPage = "library.jsp";
        }
        response.sendRedirect(nextPage);
        session.setAttribute("player", player);

    }
}

