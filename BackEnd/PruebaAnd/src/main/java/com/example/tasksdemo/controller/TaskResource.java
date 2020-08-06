package com.example.tasksdemo.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.tasksdemo.model.Task;
import com.example.tasksdemo.repository.TaskRepository;

/**
 * Clase encargada de listar los servicios crud de Task.
 * 
 * @author publio.diaz
 *
 */
@RestController
@RequestMapping("/taskApp")
public class TaskResource {

	@Autowired
	private TaskRepository taskRepository;

	/**
	 * Obtiene todos los Objetos Task
	 * 
	 * @return lista de Objetos Task
	 */
	@GetMapping("/tasks")
	public List<Task> retrieveAllTask() {
		return taskRepository.findAll();
	}

	/**
	 * Obtiene Objeto tipo Task
	 * 
	 * @param tsk
	 * @return Objeto tipo Task
	 */
	@PostMapping("/taskById")
	public Task getTask(@RequestBody Task tsk) {
		Task result = null;
		try {
			List<Task> lista = taskRepository.findAll();

			for (Task t : lista) {

				if (t.getId().equals(tsk.getId())) {
					result = t;
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;

	}

	/**
	 * Elimina el objeto task
	 * 
	 * @param tsk Objeto tipo task
	 */
	@PostMapping("/deleteTaskById")
	public void deleteTask(@RequestBody Task tsk) {
		try {
			Task result = null;
			List<Task> lista = taskRepository.findAll();

			for (Task t : lista) {

				if (t.getId().equals(tsk.getId())) {
					result = t;
					break;
				}
			}

			if (result != null) {
				taskRepository.deleteById(result.getId());
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

	/**
	 * Crea el objeto Task.
	 * 
	 * @param tsk json del objeto
	 */
	@PostMapping("/createTask")
	public void createTask(@RequestBody Task tsk) {
		try {
			Task task = new Task();

			task.setComplete(tsk.isComplete());
			task.setDescription(tsk.getDescription());
			task.setExpiredDate(tsk.getExpiredDate());
			task.setPersonName(tsk.getPersonName());
			task.setTitle(tsk.getTitle());
			taskRepository.save(task);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	/**
	 * Actualiza el objeto Task
	 * 
	 * @param tsk
	 */
	@PostMapping("/updateTaskbyId")
	public void updateTaskById(@RequestBody Task tsk) {
		Task result = null;
		try {
			List<Task> lista = taskRepository.findAll();

			for (Task t : lista) {

				if (t.getId().equals(tsk.getId())) {
					result = t;
					break;
				}
			}

			if (result != null) {

				result.setComplete(tsk.isComplete());
				result.setDescription(tsk.getDescription());
				result.setPersonName(tsk.getPersonName());
				result.setTitle(tsk.getTitle());
				result.setExpiredDate(tsk.getExpiredDate());
				taskRepository.save(result);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
