package org.example.repository;

import org.example.entity.ClientRecord;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Timestamp;
import java.util.List;

public interface ClientRecordRepository extends JpaRepository<ClientRecord, Integer> {
    ClientRecord save(ClientRecord clientRecord);

    boolean existsByTime(Timestamp date);

    List<ClientRecord> findByUserId(int userId);
}
