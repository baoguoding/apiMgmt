package com.rs.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.rs.conf.MyWebMvcConfigAdapter;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.rs.service.impl",  "com.rs.controller" })
public class AppConfig {
	@Bean
	public MyWebMvcConfigAdapter getMyWebMvcConfigAdapter(){
		return new MyWebMvcConfigAdapter();
	}
}
