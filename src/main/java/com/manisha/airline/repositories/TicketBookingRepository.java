package com.manisha.airline.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.manisha.airline.models.TicketBooking;

@Repository
public interface TicketBookingRepository extends JpaRepository<TicketBooking, Integer> {

	public TicketBooking findByTicketid(Integer ticketid);

	public List<TicketBooking> findByCustomerid(Integer customerid);

	public List<TicketBooking> findByUseremail(String useremail);
}
