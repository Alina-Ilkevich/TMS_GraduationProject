package org.example.repository;

import org.example.entity.ClientRecord;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Timestamp;

public interface ClientRecordRepository extends JpaRepository<ClientRecord, Integer> {
    ClientRecord save(ClientRecord clientRecord);

    boolean existsByTime(Timestamp date);
}
