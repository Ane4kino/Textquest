package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ChestActionServlet")
public class ChestActionServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nextPage = null;
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");
        String action = request.getParameter("action");

        if (action != null) {
            if (action.equals("openChest")) {
                player.setCurrentPlayerRoom("chest");
                nextPage = "chest.jsp";

            } else if (action.equals("return")) {
                player.setCurrentPlayerRoom("secretRoom");
                nextPage = "secretRoom.jsp";
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
