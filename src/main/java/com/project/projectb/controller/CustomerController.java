package com.project.projectb.controller;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.projectb.beans.Customer;
import com.project.projectb.serviceImpl.CustomerServiceImpl;

@Controller
public class CustomerController {

	@Autowired
	private CustomerServiceImpl customerServiceImpl;

	@RequestMapping("/getcust")
	public @ResponseBody String getCustomer(@RequestParam("mobileno") String mobileno) throws JSONException {
		Customer customer = customerServiceImpl.getCustomer(mobileno);
		
		JSONObject obj = new JSONObject();
		obj.put("mobileno", customer.getMobileno());
		obj.put("accountid", customer.getAccountid());
		obj.put("address", customer.getAddress());
		obj.put("ageonnet", customer.getAgeonnet());
		obj.put("billmaster", customer.getBillmaster());
		obj.put("billplan", customer.getBillplan());
		obj.put("conntype", customer.getConntype());
		obj.put("custclass", customer.getCustclass());
		obj.put("custseg", customer.getCustseg());
		obj.put("dob", customer.getDob());
		obj.put("firstname", customer.getFirstname());
		obj.put("iddetails", customer.getIddetails());
		obj.put("language", customer.getLanguage());
		obj.put("lastname", customer.getLastname());
		obj.put("midname", customer.getMidname());
		obj.put("nationality", customer.getNationality());
		obj.put("status", customer.getStatus());
		
		return obj.toString();
	}
	}
	
