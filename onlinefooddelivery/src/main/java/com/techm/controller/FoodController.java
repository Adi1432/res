package com.techm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.techm.dao.FoodRepo;
import com.techm.model.Food;
import com.techm.service.FoodService;

@RestController
public class FoodController {

	@Autowired
	private FoodService service;
	
	@Autowired
	private FoodRepo ep;

	@PostMapping("/showAddFoodForm")
	public ModelAndView showaddfoodform(@RequestParam("id") int id) {

		ModelAndView mv = new ModelAndView();

		mv.addObject("id", id);

		mv.setViewName("AddFoodForm");
		return mv;
	}

	@PostMapping("/addFood")
	public ModelAndView addFood(@ModelAttribute("food") Food food, @RequestParam("id") int id) {

		System.out.println(id);

		Food f = new Food();

		f.setCategory(food.getCategory());
		f.setDescription(food.getDescription());
		f.setFoodName(food.getFoodName());
		f.setPrice(food.getPrice());
		f.setResName(food.getResName());
		service.addFooditems(f, id);
		return new ModelAndView("done");

	}

	@PostMapping("/viewAllfoods")
	public ModelAndView viewAllFoods(@RequestParam("id") int id) {

		List<Food> list = service.viewFoods(id);

		ModelAndView mv = new ModelAndView();

		mv.addObject("list",list);

		mv.setViewName("ViewFoods");
		return mv;

	}
	
	@PostMapping("/orders")
	public ModelAndView viewOrders(@RequestParam("id") int id) {

		List<Food> list = service.viewFoods(id);

		ModelAndView mv = new ModelAndView();

		mv.addObject("list",list);

		mv.setViewName("ViewOrders");
		return mv;

	}
	
	
	@PostMapping("/deleteFood")
	public ModelAndView deleteFood(@RequestParam("id") int id) {
		
		service.deleteFood(id);
		
		return new ModelAndView("done");
		
	}
	
	@PostMapping("/showupdatefoodform")
	public ModelAndView showUpdateFoodForm(@RequestParam("id") int id) {
		
		ModelAndView mv = new ModelAndView();

		mv.addObject("id",id);

		mv.setViewName("UpdateFood");
		return mv;
		
	}
	
	@PostMapping("/updateFood")
	public ModelAndView updateFood(@ModelAttribute("food") Food food,@RequestParam("id") int id) {
		
		service.updateFood(food, id);
		
		return new ModelAndView("done");
		
	}
	
	@GetMapping("/orderFood")
	public ModelAndView orderFood() {
		
		List<Food> list =  service.findAllFood();
		
		ModelAndView mv = new ModelAndView();

		mv.addObject("list",list);

		mv.setViewName("ViewAllFoods");
		return mv;
		
	}
	
	@PostMapping("/searchFood")
	public ModelAndView searchJob(@RequestParam("cat") String cat) {
		
		List<Food> list =  ep.findByCategoryContains(cat);
		
		ModelAndView mv = new ModelAndView();

		mv.addObject("list",list);

		mv.setViewName("ViewAllFoods");
		return mv;
		
		
		
	}
	
	
}
