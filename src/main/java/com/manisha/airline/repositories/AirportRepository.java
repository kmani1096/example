/**
 * 
 */
package com.manisha.airline.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.manisha.airline.models.Airport;

/**
 * @author manisha
 *
 */
@Repository
public interface AirportRepository extends JpaRepository<Airport, Integer> {
	
	public Airport findByid(Integer id);
	
	public Airport findByflightidAndCity(Integer flightid, String city);

}
