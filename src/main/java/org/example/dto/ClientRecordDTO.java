package org.example.dto;

public class ClientRecordDTO {

    private String time;

    private int animalService;

    private int user;

    private int master;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getAnimalService() {
        return animalService;
    }

    public void setAnimalService(int animalService) {
        this.animalService = animalService;
    }

    public int getUser() {
        return user;
    }

    public void setUser(int user) {
        this.user = user;
    }

    public int getMaster() {
        return master;
    }

    public void setMaster(int master) {
        this.master = master;
    }
}
