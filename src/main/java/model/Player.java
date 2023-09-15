package model;

import java.io.Serializable;

public class Player implements Serializable {

    private String name;

    private int doorsOpened;
    private boolean blueKeyTaken;
    private boolean yellowKeyTaken;
    private boolean redKeyTaken;
    private boolean blueDoorTaken;
    private boolean yellowDoorTaken;
    private String currentPlayerRoom;
    private boolean redDoorTaken;
    private int keysCollected;
    private int gamesPlayed;

    public Player() {
    }

    public Player(String name) {
        this.name = name;
        this.doorsOpened = 0;
        this.keysCollected = 0;
        this.gamesPlayed = 0;
        this.blueKeyTaken = false;
        this.yellowKeyTaken=false;
        this.redKeyTaken=false;
        this.currentPlayerRoom = "startingRoom";
    }

    // Геттеры и сеттеры для всех полей
    public void setBlueDoorTaken(boolean blueDoorTaken) {
        this.blueDoorTaken = blueDoorTaken;
    }

    public boolean isYellowDoorTaken() {
        return yellowDoorTaken;
    }

    public void setYellowDoorTaken(boolean yellowDoorTaken) {
        this.yellowDoorTaken = yellowDoorTaken;
    }

    public boolean isRedDoorTaken() {
        return redDoorTaken;
    }

    public boolean isBlueDoorTaken() {
        return blueDoorTaken;
    }
    public void setRedDoorTaken(boolean redDoorTaken) {
        this.redDoorTaken = redDoorTaken;
    }
    public boolean isYellowKeyTaken() {
        return yellowKeyTaken;
    }
    public String getCurrentPlayerRoom() {
        return currentPlayerRoom;
    }

    public void setCurrentPlayerRoom(String currentPlayerRoom) {
        this.currentPlayerRoom = currentPlayerRoom;
    }

    public void setYellowKeyTaken(boolean yellowKeyTaken) {
        this.yellowKeyTaken = yellowKeyTaken;
    }

    public boolean isRedKeyTaken() {
        return redKeyTaken;
    }

    public void setRedKeyTaken(boolean redKeyTaken) {
        this.redKeyTaken = redKeyTaken;
    }
    public boolean isBlueKeyTaken() {
        return blueKeyTaken;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getKeysCollected() {
        return keysCollected;
    }

    public void setKeysCollected(int keysCollected) {
        this.keysCollected = keysCollected;
    }

    public int getGamesPlayed() {
        return gamesPlayed;
    }

    public void setGamesPlayed(int gamesPlayed) {
        this.gamesPlayed = gamesPlayed;
    }

    public void setBlueKeyTaken(boolean blueKeyTaken) {
        this.blueKeyTaken = blueKeyTaken;
    }

    public void openDoor() {
        doorsOpened++;
    }

    public int getDoorsOpened() {
        return doorsOpened;
    }

    public void setDoorsOpened(int doorsOpened) {
        this.doorsOpened = doorsOpened;
    }
}

