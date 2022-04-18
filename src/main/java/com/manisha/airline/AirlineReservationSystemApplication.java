package com.manisha.airline;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.manisha.airline.models.PropertyFileReader;

@SpringBootApplication(scanBasePackages = { "com.manisha.airline.*" })
/*
 * @ComponentScans({ @ComponentScan("com.manisha.airline.security")
 * , @ComponentScan("com.manisha.airline.controller"),
 * 
 * @ComponentScan("com.manisha.airline.services"), @ComponentScan(
 * "com.manisha.airline.services.impl") })
 */
@EnableConfigurationProperties({ PropertyFileReader.class })
@EnableJpaRepositories("com.manisha.airline.repositories")
@EntityScan("com.manisha.airline.models")
public class AirlineReservationSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(AirlineReservationSystemApplication.class, args);
	}

}
