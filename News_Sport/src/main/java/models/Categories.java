package models;

import java.util.Date;

public class Categories {
	private int id;
	private String name;
	private String description;
	private Date created_at;
	private Date updated_at;
	private int is_Active;



	public Categories() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Categories(int id, String name, String description, int is_Active) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.is_Active = is_Active;
	}

	public Categories(String name, String description, int is_Active) {
		super();
		this.name = name;
		this.description = description;
		this.is_Active = is_Active;
	}

	public Categories(int id, String name, String description, Date created_at, Date updated_at, int is_Active) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.created_at = created_at;
		this.updated_at = updated_at;
		this.is_Active = is_Active;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getUpdated_at() {
		return updated_at;
	}

	public void setUpdated_at(Date updated_at) {
		this.updated_at = updated_at;
	}

	public int getIs_Active() {
		return is_Active;
	}

	public void setIs_Active(int is_Active) {
		this.is_Active = is_Active;
	}

	@Override
	public String toString() {
		return "Categories [id=" + id + ", name=" + name + ", description=" + description + ", created_at=" + created_at
				+ ", updated_at=" + updated_at + ", is_Active=" + is_Active + "]";
	}



}
