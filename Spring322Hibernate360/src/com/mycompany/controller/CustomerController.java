package com.mycompany.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mycompany.model.Customer;
import com.mycompany.service.CustomerService;

@Controller
@RequestMapping("/Customer")
public class CustomerController {

	private static final Logger logger = Logger.getLogger(CustomerController.class);
	
	@Autowired
	CustomerService customerService;

	@RequestMapping("/list")
	public ModelAndView getCustomersList() {
		ModelAndView mv = new ModelAndView("list");

		List<Customer> customers = customerService.getCustomerList();
		mv.addObject("customers", customers);
		return mv;

	}
	@RequestMapping("/edit")
	public ModelAndView editCustomer(@RequestParam int id ) {
		
		
		ModelAndView mv = new ModelAndView("edit");
		Customer customer= customerService.getCustomerById(id);
		mv.addObject("list", customer);
		return mv;

	}
	
	
}
