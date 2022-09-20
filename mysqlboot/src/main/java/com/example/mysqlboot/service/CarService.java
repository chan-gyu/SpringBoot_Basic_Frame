package com.example.mysqlboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.mysqlboot.CarMapper;
import com.example.mysqlboot.vo.Car;

@Service
public class CarService {
	
	@Autowired
	CarMapper carMapper;
	
	public List<Car> carList(){
		return carMapper.carList();
	}
}
