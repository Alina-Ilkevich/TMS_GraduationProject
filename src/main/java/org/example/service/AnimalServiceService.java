package org.example.service;

import org.example.dto.AnimalServiceDTO;
import org.example.entity.AnimalService;
import org.example.repository.AnimalServiceRepository;
import org.example.util.timeutil.TimeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimalServiceService {

    @Autowired
    private AnimalServiceRepository animalServiceRepository;

    public List<AnimalService> findService(){
        return animalServiceRepository.findAll();
    }

    public void addAnimalService(AnimalServiceDTO animalServiceDTO){
        AnimalService animalService = new AnimalService();
        animalService.setServiceName(animalServiceDTO.getServiceName());
        animalService.setDescription(animalServiceDTO.getDescription());
        animalService.setExecutionTime(TimeUtil.convertStringToTime(animalServiceDTO.getExecutionTime()));
        animalService.setCost(animalServiceDTO.getCost());
        animalServiceRepository.save(animalService);
    }
}
