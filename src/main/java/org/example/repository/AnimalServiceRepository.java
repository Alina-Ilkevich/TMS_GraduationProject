package org.example.repository;

import org.example.entity.AnimalService;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AnimalServiceRepository extends JpaRepository<AnimalService, Integer> {
    AnimalService save(AnimalService animalService);
}
