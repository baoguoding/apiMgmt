package com.rs.controller;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Import;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rs.conf.AppConfig;
import com.rs.conf.DBConfig;



@RestController
@EnableAutoConfiguration
@Import(value = {AppConfig.class, DBConfig.class})
public class MyApp {

	@RequestMapping("/")
	String home() {
		return "hello world";
	}
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(MyApp.class, args);
	}

}
