package com.techm.controller;

import java.util.ArrayList;

import org.hibernate.mapping.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.techm.dao.FoodRepo;
import com.techm.model.Food;
import com.techm.model.Orders;
import com.techm.service.OrderService;

@RestController
public class OrderController {
	
	@Autowired
	private OrderService service;
	
	@Autowired
	private FoodRepo r;
	
	@PostMapping("/showOrderForm")
	public ModelAndView showOrderForm(@RequestParam("id") int id ,Model model) {
		
		Food f = r.findById(id).get();
		
		
		ModelAndView mv = new ModelAndView();
		model.addAttribute("list",f);
		mv.setViewName("OrderFood");
		return mv;
		
		
	}
	
	@PostMapping("/OrderFood")
	public ModelAndView orderFood(@ModelAttribute("orders") Orders orders,@RequestParam("id") int id) {
		
		
		
		Orders or = new Orders();
		
		or.setFood(orders.getFood());
		or.setPrice(orders.getPrice());
		or.setQuan(orders.getQuan());
		or.setUserName(orders.getUserName());
		
		int total = Integer.parseInt(orders.getPrice())*Integer.parseInt(orders.getQuan());
		String t = String.valueOf(total);
		or.setTotal(t);
		
		service.orderFood(or, id);
		
	return new	ModelAndView("done");
		
		
		
	}

}
