package com.techm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.techm.dao.FoodRepo;
import com.techm.model.Food;
import com.techm.model.Orders;



@Service
public class OrderService {
	
	
	

	@Autowired
	private FoodRepo fr;
	
public Orders orderFood(Orders orders,int id) {
		
	Food j=fr.findById(id).get();
		List<Orders> list = j.getOrders();
		list.add(orders);
		
		j.setOrders(list);
		fr.save(j);
		return orders;	
	}

}
