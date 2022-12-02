package com.etc.jn;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.etc.jn.dao")
public class JnApplication {

	public static void main(String[] args) {
		SpringApplication.run(JnApplication.class, args);
	}

}
