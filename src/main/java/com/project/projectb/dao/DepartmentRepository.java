package com.project.projectb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.projectb.beans.Department;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, String> {

}
