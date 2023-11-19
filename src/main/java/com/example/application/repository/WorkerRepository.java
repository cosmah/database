package com.example.application.repository;

import com.example.application.model.Worker;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface WorkerRepository extends JpaRepository<Worker, Long>{
    void deleteWorkerById(Long id);

    Optional<Worker> findWorkerById(Long id);

}
