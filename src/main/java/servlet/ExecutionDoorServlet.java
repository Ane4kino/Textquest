package servlet;

import model.Player;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ExecutionDoorServlet")
public class ExecutionDoorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        Player player = (Player) session.getAttribute("player");

        player.setCurrentPlayerRoom("prisonCorridor");
        response.sendRedirect("prisonCorridor.jsp");
        session.setAttribute("player", player);
        player.openDoor();
    }
}

