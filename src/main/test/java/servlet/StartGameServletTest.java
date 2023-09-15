package servlet;

import model.Player;
import org.junit.jupiter.api.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import java.util.Objects;
import static org.junit.jupiter.api.Assertions.assertEquals;


public class StartGameServletTest {

    @Test
    public void testDoPost() throws Exception {
        StartGameServlet startGameServlet = new StartGameServlet();

        MockHttpServletRequest request = new MockHttpServletRequest();
        MockHttpServletResponse response = new MockHttpServletResponse();

        request.setParameter("playerName", "TestPlayer");

        startGameServlet.doPost(request, response);

        assertEquals(302, response.getStatus());

        Player player = (Player) Objects.requireNonNull(request.getSession()).getAttribute("player");
        assertEquals("TestPlayer", player.getName());
        assertEquals("building", player.getCurrentPlayerRoom());
    }
}

