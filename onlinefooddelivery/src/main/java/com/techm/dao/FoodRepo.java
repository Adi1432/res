package com.techm.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techm.model.Food;

@Repository
public interface FoodRepo extends JpaRepository<Food,Integer>{
	public List<Food> findByCategoryContains(String cat);
}
