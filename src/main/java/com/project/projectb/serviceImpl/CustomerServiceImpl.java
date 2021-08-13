package com.project.projectb.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.projectb.beans.Customer;
import com.project.projectb.dao.CustomerRepository;
import com.project.projectb.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	public Customer getCustomer(String mobileno) {
		Customer customer = null;
		if(customerRepository.existsById(mobileno)==true) {
		customer =(Customer) customerRepository.getOne(mobileno);
		}
		return customer;
	}
}
