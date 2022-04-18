/**
 * 
 */
package com.manisha.airline.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.manisha.airline.models.Seat;

/**
 * @author manisha
 *
 */
@Service
public interface SeatService {
	
	public Seat getSeatById(Integer id);
	public Seat getSeatByClassAndFlightId(String seatClass, Integer flightId);
	public List<Seat> getAllSeats();
	public Seat saveSeat(Seat seat);
	public void deleteSeat(Seat seat);
	public void deleteSeatById(Integer id);
	public List<Seat> getSeatByFlightId(Integer flightid);

}
