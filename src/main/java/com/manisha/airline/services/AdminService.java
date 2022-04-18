/**
 * 
 */
package com.manisha.airline.services;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.manisha.airline.models.Customer;
import com.manisha.airline.models.FlightDetails;
import com.manisha.airline.models.Seat;

/**
 * @author manisha
 *
 */
@Transactional
@Service
public interface AdminService {
	public List<Customer> getAllCustomerDetails();
}
