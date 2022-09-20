package com.example.mysqlboot;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.example.mysqlboot.vo.Car;

@Mapper
@Repository
public interface CarMapper {
	
	List<Car> carList();

}
