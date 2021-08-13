package com.project.projectb.beans;

import javax.persistence.*;

@Entity
@Table(name = "department")
public class Department {

	@Id
	private String deptid;
	@Column (nullable = false, length = 20)
	private String deptname;
	@Column 
	private String deptparent;
	@Column (length = 50)
	private String deptdesc;

	public String getDeptid() {
		return deptid;
	}

	public void setDeptid(String deptid) {
		this.deptid = deptid;
	}

	public String getDeptname() {
		return deptname;
	}

	public void setDeptname(String deptname) {
		this.deptname = deptname;
	}

	public String getDeptparent() {
		return deptparent;
	}

	public void setDeptparent(String deptparent) {
		this.deptparent = deptparent;
	}

	public String getDeptdesc() {
		return deptdesc;
	}

	public void setDeptdesc(String deptdesc) {
		this.deptdesc = deptdesc;
	}

	public Department(String deptid, String deptname, String deptparent, String deptdesc) {
		this.deptid = deptid;
		this.deptname = deptname;
		this.deptparent = deptparent;
		this.deptdesc = deptdesc;
	}

	public Department() {

	}

}
