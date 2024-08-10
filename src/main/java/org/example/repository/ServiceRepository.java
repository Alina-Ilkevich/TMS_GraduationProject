package org.example.repository;

import org.example.entity.Comment;
import org.example.entity.Service;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ServiceRepository extends JpaRepository<Service, Integer> {
}
