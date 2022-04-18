/**
 * 
 */
package com.manisha.airline.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.manisha.airline.models.SeatStatus;

/**
 * @author manisha
 *
 */
@Repository
public interface SeatStatusRepository extends JpaRepository<SeatStatus, Integer> {

	public SeatStatus findByFlightid(int flightid);

}
