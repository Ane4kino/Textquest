package servlet;

import model.Player;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import static org.mockito.Mockito.*;

public class WardrobeKeyServletTest {
//
//    @Mock
//    HttpServletRequest request;
//    @Mock
//    HttpServletResponse response;
//    @Mock
//    HttpSession session;
//
//    @Mock
//    Player player;
//    @Mock
//    RequestDispatcher requestDispatcher;
//
//    @Before
//    public void setUp() throws Exception {
//        MockitoAnnotations.initMocks(this);
//        when(request.getSession()).thenReturn(session);
//        when(session.getAttribute("player")).thenReturn(player);
//        when(request.getParameter("action")).thenReturn("openDoor"); // Установите параметр action
//    }
//
//
//    @Test
//    public void testOpenDoorInRelaxRoom() throws ServletException, IOException {
//        // Создание моков
//        HttpServletRequest request = mock(HttpServletRequest.class);
//        HttpServletResponse response = mock(HttpServletResponse.class);
//        HttpSession session = mock(HttpSession.class);
//        Player player = mock(Player.class);
//
//        // Установка ожидаемого значения для getCurrentPlayerRoom()
//        when(player.getCurrentPlayerRoom()).thenReturn("relaxRoom"); // Установите ожидаемое значение
//
//        // Создание сервлета
//
//        WardrobeKeyServlet servlet = new WardrobeKeyServlet();
//
//        // Настройка моков
//        when(request.getSession()).thenReturn(session);
//        when(session.getAttribute("player")).thenReturn(player);
//        when(request.getParameter("action")).thenReturn("openDoor");
//
//        // Вызов метода сервлета
//        servlet.doPost(request, response);
//
//        // Проверка результата, например, вызов response.sendRedirect()
//        verify(response).sendRedirect("bedroom.jsp"); // Убедитесь, что ожидаемая страница корректна
//    }
//
//
//    @Test
//    public void testNoActionParameter() throws ServletException, IOException {
//
//        when(request.getSession()).thenReturn(session);
//        when(session.getAttribute("player")).thenReturn(player);
//        when(request.getParameter("action")).thenReturn(null);
//        WardrobeKeyServlet servlet = new WardrobeKeyServlet();
//        servlet.doPost(request, response);
//
//        verify(player, never()).setCurrentPlayerRoom(anyString());
//        verify(player, never()).openDoor();
//        verify(player, never()).setBlueDoorTaken(anyBoolean());
//
//        verify(response).sendRedirect(anyString());
//    }
}
