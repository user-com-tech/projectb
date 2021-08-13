package com.project.projectb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.projectb.beans.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, String> {

}
