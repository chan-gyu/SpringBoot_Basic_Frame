package com.example.mysqlboot.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.mysqlboot.service.CarService;
import com.example.mysqlboot.vo.Car;

@Controller
public class CarController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	CarService service;
	
	@RequestMapping("/")
	public String home() {
		logger.info("[Controller] : /index");
		return "index";
	}
	//MyBatis Mysql
	//CarController(@controller) -> CarService(@service) -> CarMapper(interface)(@mapper @Repository) -> mapper.xml
	@RequestMapping("/carList.do")
	public String carList(Model model) {
		logger.info("[Controller] : /carList.do");
		List<Car> list = service.carList();
		model.addAttribute("list", list);
		return "carList";
	}
	
	
}
