package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/EnterCastleServlet")
public class EnterCastleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String enterCastle = request.getParameter("enterCastle");
        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");


        if ("yes".equals(enterCastle)) {
            player.setCurrentPlayerRoom("hallway");
            response.sendRedirect("hallway.jsp");
            player.openDoor();
        } else {
            response.sendRedirect("gameover.jsp");
        }
        session.setAttribute("player", player);
    }
}

