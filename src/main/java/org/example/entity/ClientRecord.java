package org.example.entity;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "client_record")
public class ClientRecord {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "time")
    private Date time;

    @ManyToOne
    @JoinColumn(name = "service_id")
    private AnimalService service;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "master_id")
    private User master;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public AnimalService getService() {
        return service;
    }

    public void setService(AnimalService service) {
        this.service = service;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getMaster() {
        return master;
    }

    public void setMaster(User master) {
        this.master = master;
    }

    @Override
    public String toString() {
        return "ClientRecord{" +
                "id=" + id +
                ", time=" + time +
                ", service=" + service +
                ", user=" + user +
                ", master=" + master +
                '}';
    }
}
