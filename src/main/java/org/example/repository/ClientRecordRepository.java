package org.example.repository;

import org.example.entity.ClientRecord;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientRecordRepository extends JpaRepository<ClientRecord, Integer> {
}
