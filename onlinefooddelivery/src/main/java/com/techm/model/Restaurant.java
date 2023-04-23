package com.techm.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
public class Restaurant {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String resName;
	
	private String password;
	
	private String location;
	
	private String contact;
	
	private String rating;
	
	
	
	
	
	
	@OneToMany(targetEntity =Food.class,cascade=CascadeType.ALL)
	 @JoinColumn(name = "res_id")
	private List<Food> fi;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public List<Food> getFi() {
		return fi;
	}

	public void setFi(List<Food> fi) {
		this.fi = fi;
	}

	@Override
	public String toString() {
		return "Restaurant [id=" + id + ", resName=" + resName + ", password=" + password + ", location=" + location
				+ ", contact=" + contact + ", rating=" + rating + ", fi=" + fi + "]";
	}

	

}
