/**
 * 
 */
package com.manisha.airline.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manisha.airline.models.Customer;
import com.manisha.airline.models.FlightDetails;
import com.manisha.airline.models.Seat;
import com.manisha.airline.services.AdminService;
import com.manisha.airline.services.CustomerService;
import com.manisha.airline.services.FlightService;
import com.manisha.airline.services.SeatService;

/**
 * @author manisha
 *
 */
@Transactional
@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private CustomerService customerService;

	@Override
	public List<Customer> getAllCustomerDetails() {
		return customerService.getAllCustomerDetailsExceptAdmin();
	}

}
