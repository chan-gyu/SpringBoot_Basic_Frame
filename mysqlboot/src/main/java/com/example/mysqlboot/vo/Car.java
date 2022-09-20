package com.example.mysqlboot.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Car {
	
	private String carNum;
	private String inDate;
	private String state;
	private String name;
	
}
