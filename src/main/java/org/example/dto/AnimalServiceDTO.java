package org.example.dto;

import jakarta.validation.constraints.Min;

public class AnimalServiceDTO {

    private String serviceName;

    private String description;

    private String executionTime;

    @Min(value = 1, message = "Стоимость должна быть больше 0")
    private int cost;

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

    public String getExecutionTime() {
        return executionTime;
    }

    public void setExecutionTime(String executionTime) {
        this.executionTime = executionTime;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }
}
