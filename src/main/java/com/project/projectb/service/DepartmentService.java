package com.project.projectb.service;

import java.util.List;

import com.project.projectb.beans.Department;

public interface DepartmentService {

	public Department addDepartment(Department dept);

	public List<Department> findAll();

	public Department getDepartment(String deptId);

	public void deleteDept(String deptid);
}
