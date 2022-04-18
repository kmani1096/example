/**
 * 
 */
package com.manisha.airline.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manisha.airline.models.TicketBooking;
import com.manisha.airline.repositories.TicketBookingRepository;
import com.manisha.airline.services.TicketBookingService;

/**
 * @author manisha
 *
 */
@Transactional
@Service
public class TicketBookingServiceImpl implements TicketBookingService {
	
	@Autowired
	private TicketBookingRepository ticketBookingRepository;

	@Override
	public void saveTicketDetails(TicketBooking ticket) {
		ticketBookingRepository.save(ticket);
	}

	@Override
	public void deleteTicketDetails(TicketBooking ticket) {
		ticketBookingRepository.delete(ticket);
	}

	@Override
	public List<TicketBooking> getAllTicketBookingDetails() {
		return ticketBookingRepository.findAll();
	}

	@Override
	public TicketBooking getTicketById(Integer id) {
		return ticketBookingRepository.findByTicketid(id);
	}

	@Override
	public List<TicketBooking> getTicketByCustomerId(Integer id) {
		return ticketBookingRepository.findByCustomerid(id);
	}

	@Override
	public List<TicketBooking> getTicketByUserEmail(String useremail) {
		return ticketBookingRepository.findByUseremail(useremail);
	}

	@Override
	public void deleteTicketById(Integer id) {
		ticketBookingRepository.deleteById(id);
	}

}
