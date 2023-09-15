package servlet;

import model.Player;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;


public class StartGameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

         Player player = new Player();

        player.setName(request.getParameter("playerName"));
        player.setCurrentPlayerRoom("building");

        HttpSession session = request.getSession();

        session.setAttribute("player", player);

        response.sendRedirect("building.jsp");
    }
}
