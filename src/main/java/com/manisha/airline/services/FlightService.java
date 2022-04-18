package com.manisha.airline.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.manisha.airline.models.FlightDetails;
import com.manisha.airline.models.Search;

@Service
public interface FlightService{
	public FlightDetails getFlightById(Integer id);

	public List<FlightDetails> getAllFlightDetails();

	public FlightDetails saveFlightDetails(FlightDetails flight);

	public void deleteFlightDetails(FlightDetails flight);
	
	public void deleteFlightById(Integer id);
	
//	public List<FlightDetails> getFlightBySourceAndDestination(Search search);

	public List<FlightDetails> getFlightBySourceAndDestinationAndDeparture(Search search);
	
	public List<Integer> getAllFlightsId();
	
	public void op();
}
