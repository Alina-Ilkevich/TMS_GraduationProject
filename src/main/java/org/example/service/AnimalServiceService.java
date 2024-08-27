package org.example.service;

import org.example.entity.AnimalService;
import org.example.repository.AnimalServiceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimalServiceService {

    @Autowired
    private AnimalServiceRepository serviceForAnimalRepository;

    public List<AnimalService> findService(){
        return serviceForAnimalRepository.findAll();
    }
}
