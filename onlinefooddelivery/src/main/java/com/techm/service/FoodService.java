package com.techm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.dao.FoodRepo;
import com.techm.dao.RestaurantRepo;
import com.techm.model.Food;
import com.techm.model.Restaurant;

@Service
public class FoodService {
	
	@Autowired
	private FoodRepo fr;
	
	@Autowired
	private RestaurantRepo rr;
	
	public Food addFooditems(Food f,int id) {
		Restaurant rc = rr.findById(id).get();
		System.out.println(rc);
		List<Food> list = rc.getFi();
		list.add(f);
		rc.setFi(list);
		rr.save(rc);
		return f;
		
	}
	
	public List<Food> viewFoods( int id) {
		Restaurant rc = rr.findById(id).get();
			List<Food> list = rc.getFi();
			
			return list;
			
		
			
		}
	public List<Food> findAllFood() {
		return fr.findAll();
	}
	public void deleteFood(int id) {
		
		fr.deleteById(id);
		
	}
	
	
	public Food updateFood(Food food,int id) {
		
		Food f = fr.findById(id).get();
		
		f.setCategory(food.getCategory());
		f.setDescription(food.getDescription());
		f.setFoodName(food.getFoodName());
		f.setPrice(food.getPrice());
		
		return fr.save(f);
		
	}

}
