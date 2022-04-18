package com.manisha.airline.services;

import org.springframework.stereotype.Service;

import com.manisha.airline.models.FlightDetails;
import com.manisha.airline.models.Search;
import com.manisha.airline.models.SearchedFlightDetails;
import com.manisha.airline.models.Seat;

/**
 * 
 * @author manisha
 *
 */

@Service
public interface SearchedFlightDetailsService {
	
	public SearchedFlightDetails getSearchDetails(Search search);
	public SearchedFlightDetails saveFlightAndSeat(FlightDetails flight, Seat seat);
}
