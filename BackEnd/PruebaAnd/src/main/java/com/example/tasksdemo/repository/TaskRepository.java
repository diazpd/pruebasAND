package com.example.tasksdemo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.tasksdemo.model.Task;

/**
 * Clase encargada de obtener el repositorio JPA del Objeto
 * @author publio.diaz
 *
 */
@Repository
public interface TaskRepository extends JpaRepository<Task, Long>{

}