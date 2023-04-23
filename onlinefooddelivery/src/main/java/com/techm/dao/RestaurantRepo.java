package com.techm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.techm.model.Restaurant;
@Repository
public interface RestaurantRepo extends JpaRepository<Restaurant, Integer>{
	public Restaurant findByResNameAndPassword(String userName,String password);
	
}
