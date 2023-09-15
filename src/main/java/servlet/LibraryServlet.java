package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LibraryServlet", urlPatterns = "/LibraryServlet")
public class LibraryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if (action != null) {
            if ("goToDiningRoom".equals(action)) {
                player.setCurrentPlayerRoom("diningRoom");
                nextPage = "diningRoom.jsp";
                player.openDoor();
            } else if ("goToSecretDoor".equals(action)) {
                player.setCurrentPlayerRoom("hallway");
                nextPage = "hallway.jsp";
                player.openDoor();
            } else if ("exploreBooks".equals(action)) {
                player.setCurrentPlayerRoom("libraryBooks");
                nextPage = "library_books.jsp";
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
