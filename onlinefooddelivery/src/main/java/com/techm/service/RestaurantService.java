package com.techm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.dao.RestaurantRepo;
import com.techm.model.Restaurant;


@Service
public class RestaurantService {
	@Autowired
	private RestaurantRepo rr;
	
	public Restaurant addRestaurant(Restaurant u) {
		return rr.save(u); 
	}
	public void delRestaurant(int id) {
		rr.deleteById(id);
	}
	public Restaurant updateRestaurant(Restaurant u,int id) {
		Restaurant j=rr.findById(id).get();
		j.setResName(u.getResName());
		j.setPassword(u.getPassword());
		j.setLocation(u.getLocation());
		j.setContact(u.getContact());
		j.setRating(u.getRating());
		return rr.save(j);
	}
	public List<Restaurant> getAllRestaurant() {
		return rr.findAll();
	}
	public Restaurant authenticateUser(String resName, String password) {
		
		System.out.println(this.rr);
		// TODO Auto-generated method stub
		return rr.findByResNameAndPassword(resName, password);
	}

}
