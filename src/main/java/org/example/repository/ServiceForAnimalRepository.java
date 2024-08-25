package org.example.repository;

import org.example.entity.ServiceForAnimal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceForAnimalRepository extends JpaRepository<ServiceForAnimal, Integer> {
}
