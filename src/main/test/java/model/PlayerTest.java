package model;

import model.Player;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class PlayerTest {

    private Player player;

    @Before
    public void setUp() {
        player = new Player("TestPlayer");
    }

    @Test
    public void testInitialValues() {
        assertEquals("TestPlayer", player.getName());
        assertEquals(0, player.getDoorsOpened());
        assertFalse(player.isBlueKeyTaken());
        assertFalse(player.isYellowKeyTaken());
        assertFalse(player.isRedKeyTaken());
        assertFalse(player.isBlueDoorTaken());
        assertFalse(player.isYellowDoorTaken());
        assertEquals("startingRoom", player.getCurrentPlayerRoom());
        assertFalse(player.isRedDoorTaken());
        assertEquals(0, player.getKeysCollected());
        assertEquals(0, player.getGamesPlayed());
    }

    @Test
    public void testOpenDoor() {
        player.openDoor();
        assertEquals(1, player.getDoorsOpened());
    }

}

