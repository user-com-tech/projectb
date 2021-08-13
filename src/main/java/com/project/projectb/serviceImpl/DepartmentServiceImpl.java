package com.project.projectb.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.projectb.beans.Department;
import com.project.projectb.dao.DepartmentRepository;
import com.project.projectb.service.DepartmentService;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentRepository departmentRepository;

	public Department addDepartment(Department dept) {
		return departmentRepository.save(dept);
	}

	public List<Department> findAll() {
		return departmentRepository.findAll();
	}

	public Department getDepartment(String deptId) {
		return departmentRepository.getOne(deptId);
	}

	public void deleteDept(String deptid) {
		departmentRepository.deleteById(deptid);
	}

}
