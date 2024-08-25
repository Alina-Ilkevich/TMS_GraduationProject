package org.example.service;

import org.example.entity.ServiceForAnimal;
import org.example.repository.ServiceForAnimalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceForAnimalService {

    @Autowired
    private ServiceForAnimalRepository serviceForAnimalRepository;

    public List<ServiceForAnimal> findService(){
        return serviceForAnimalRepository.findAll();
    }
}
