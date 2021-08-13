package com.project.projectb.controller;

import org.json.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.projectb.beans.Department;
import com.project.projectb.serviceImpl.DepartmentServiceImpl;

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentServiceImpl departmentService;

	// This method is for getting list of all departments
	@GetMapping("/dept")
	public ModelAndView departments(Model m) {
		m.addAttribute("getall", departmentService.findAll());
		return new ModelAndView("DepartmentList");
	}

	// This method is internally called by demo, when the details of department are
	// filled
	@PostMapping("/addDepartment")
	public @ResponseBody String addDepartment(@RequestParam("deptid") String deptid, @RequestParam("deptname") String deptname,
											@RequestParam("deptparent") String deptparent, @RequestParam("deptdesc") String deptdesc) 
	throws JSONException {
		
		Department dept = new Department();
		dept.setDeptid(deptid);
		dept.setDeptname(deptname);
		dept.setDeptparent(deptparent);
		dept.setDeptdesc(deptdesc);
		Department dep = departmentService.addDepartment(dept);
		
		JSONObject resObj = new JSONObject();
		resObj.put("deptid", dep.getDeptid());
		resObj.put("deptname", dep.getDeptname());
		resObj.put("deptparent", dep.getDeptparent());
		resObj.put("deptdesc", dep.getDeptdesc());     
		
		return resObj.toString();
		
	}

	// This method is invoked when deleting of department is required
	@DeleteMapping("/deleteDept")
	public @ResponseBody String deleteDept(@RequestParam("deptid") String deptid) {
		departmentService.deleteDept(deptid);
		return "Department deleted successfully";
	}

}
