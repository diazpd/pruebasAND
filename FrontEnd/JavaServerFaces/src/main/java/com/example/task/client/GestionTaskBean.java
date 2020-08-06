package com.example.task.client;

import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import com.example.task.dto.Task;

/**
 * Clase encargada de administar la creacion,actualizacion y borrado de tareas.
 * 
 * @author publio.diaz
 *
 */
@ManagedBean
@SessionScoped
public class GestionTaskBean implements Serializable {

	private static final long serialVersionUID = 4528496787553683677L;

	// clase utilitaria para utilizar el api rest
	private TaskClientUtil taskclient = new TaskClientUtil();

	// lista de tareas actuales
	private List<Task> listTasks = new ArrayList<Task>();

	// Objeto Task tmp
	private Task newTask = new Task();

	// Objeto Task tmp
	private Task updateTask = new Task();

	// Trasnformacion temporal de fecha
	private String strDate;

	public Task getUpdateTask() {
		return updateTask;
	}

	public void setUpdateTask(Task updateTask) {
		this.updateTask = updateTask;
	}

	public String getStrDate() {
		return strDate;
	}

	public void setStrDate(String strDate) {
		this.strDate = strDate;
	}

	public Task getNewTask() {
		return newTask;
	}

	public void setNewTask(Task newTask) {
		this.newTask = newTask;
	}

	public TaskClientUtil getTaskclient() {
		return taskclient;
	}

	public void setTaskclient(TaskClientUtil taskclient) {
		this.taskclient = taskclient;
	}

	public List<Task> getListTasks() {
		return listTasks;
	}

	public void setListTasks(List<Task> listTasks) {
		this.listTasks = listTasks;
	}

	public void getListTask() {

		listTasks = taskclient.getListTasks();

	}

	/**
	 * Metodo encargado de eliminar una tarea
	 * 
	 * @param tk
	 */
	public void eliminar(Task tk) {

		taskclient.deleteTaskbyId(tk);
		getListTask();

	}

	/**
	 * Metodo encargado de actualizar una tarea
	 */
	public void actualizar() {

		taskclient.updateTaskbyId(updateTask);
		getListTask();

	}

	/**
	 * Metodo encargado de obtener todas las tareas
	 */
	public GestionTaskBean() {

		getListTask();
	}

	/**
	 * Metodo encargado de crear una tarea
	 */
	public void createTask() {

		if (newTask != null) {

			if (strDate != null) {
				newTask.setExpiredDate(new Date());
			}

			taskclient.createTask(newTask);
			getListTask();
		}

	}

	/**
	 * Metodo encargado de actualiar una tarea
	 * 
	 * @param tk
	 */
	public void updateTask(Task tk) {

		updateTask = tk;
		System.out.println(tk.toString());

		FacesContext context = FacesContext.getCurrentInstance();
		try {
			context.getExternalContext().redirect("/JavaServerFaces/faces/actualizar.xhtml");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
