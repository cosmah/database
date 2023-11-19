package com.example.application.service;

import com.example.application.exceptions.UserNotFoundException;
import com.example.application.model.Worker;
import com.example.application.repository.WorkerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class WorkerService {
    private final WorkerRepository workerRepository;


    @Autowired
    public WorkerService(WorkerRepository workerRepository) {
        this.workerRepository = workerRepository;
    }

    public Worker addWorker(Worker worker){
        worker.setEmployeeCode(UUID.randomUUID().toString());
        return workerRepository.save(worker);
    }

    public List<Worker> findAllWorkers(){
        return workerRepository.findAll();
    }

    public Worker updateWorker(Worker worker){
        return workerRepository.save(worker);
    }

    public Worker findWorkerById(Long id){
        return workerRepository.findWorkerById(id)
                .orElseThrow(() -> new UserNotFoundException("User by id" +id+ " was not found"));
    }
    public void deleteWorker(Long id){
        workerRepository.deleteWorkerById(id);
    }
}
