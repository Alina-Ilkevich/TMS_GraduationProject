package org.example.entity;


import jakarta.persistence.*;

import java.sql.Time;
import java.util.List;

@Entity
@Table(name = "service")
public class AnimalService {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "service_name")
    private String serviceName;

    @Column(name = "description")
    private String description;

    @Column(name = "execution_time")
    private Time executionTime;

    @Column(name = "cost")
    private int cost;

    @OneToMany(mappedBy = "service")
    private List<ClientRecord> clientRecord;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Time getExecutionTime() {
        return executionTime;
    }

    public void setExecutionTime(Time executionTime) {
        this.executionTime = executionTime;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public List<ClientRecord> getClientRecord() {
        return clientRecord;
    }

    public void setClientRecord(List<ClientRecord> clientRecord) {
        this.clientRecord = clientRecord;
    }

    @Override
    public String toString() {
        return "Service{" +
                "id=" + id +
                ", serviceName='" + serviceName + '\'' +
                ", description='" + description + '\'' +
                ", executionTime=" + executionTime +
                ", cost=" + cost +
                ", clientRecord=" + clientRecord.size() +
                '}';
    }
}
