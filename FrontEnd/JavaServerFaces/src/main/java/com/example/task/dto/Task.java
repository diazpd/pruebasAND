package com.example.task.dto;

import java.util.Date;

/**
 * Objeto pojo para definicion de Tarea
 * @author publio.diaz
 *
 */
public class Task {

	// id del objeto tarea
	private Long id;
	//titulo de la tarea
	private String title;
	//descripcion de la tarea
	private String description;
	//tarea completa o no
	private boolean complete;
	// tiempo de expiracion de la tarea
	private Date expiredDate;
	//persona responsable de la tarea
	private String personName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public boolean isComplete() {
		return complete;
	}

	public void setComplete(boolean complete) {
		this.complete = complete;
	}

	public Date getExpiredDate() {
		return expiredDate;
	}

	public void setExpiredDate(Date expiredDate) {
		this.expiredDate = expiredDate;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", title=" + title + ", description=" + description + ", complete=" + complete
				+ ", expiredDate=" + expiredDate + ", personName=" + personName + "]";
	}

}
