package com.example.tasksdemo.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entidad Task
 * 
 * @author publio.diaz
 *
 */
@Entity
@Table(name = "task")
public class Task {

	/**
	 * Serial y llave primaria
	 */
	@Id
	@GeneratedValue
	private Long id;

	/**
	 * Propiedad title
	 */
	@Column(name = "title")
	private String title;

	/**
	 * Propiedad descripcion
	 */
	@Column(name = "description")
	private String description;

	/**
	 * Propiedad completa
	 */
	@Column(name = "complete")
	private boolean complete;

	/**
	 * Propiedad fecha de expiración
	 */
	@Column(name = "expired_date")
	private Date expiredDate;

	/**
	 * Propiedad persona
	 */
	@Column(name = "person_name")
	private String personName;

	/**
	 * Clase constructor
	 */
	public Task() {
		super();
	}

	/**
	 * Clase Constructor
	 * 
	 * @param id
	 * @param title
	 * @param description
	 * @param complete
	 * @param expiredDate
	 * @param personName
	 */
	public Task(Long id, String title, String description, boolean complete, Date expiredDate, String personName) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.complete = complete;
		this.expiredDate = expiredDate;
		this.personName = personName;
	}

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

}
