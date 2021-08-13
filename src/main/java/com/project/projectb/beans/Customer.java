package com.project.projectb.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	private String mobileno;
	@Column
	private String firstname;
	@Column
	private String midname;
	@Column
	private String lastname;
	@Column
	private String address;
	@Column
	private String accountid;
	@Column
	private String billplan;
	@Column
	private String language;
	@Column
	private String custclass;
	@Column
	private float ageonnet;
	@Column
	private String status;
	@Column
	private String conntype;
	@Column
	private String custseg;
	@Column
	private String billmaster;
	@Column
	private String dob;
	@Column
	private String nationality;
	@Column
	private String iddetails;

	public Customer() {

	}

	public Customer(String mobileno, String firstname, String midname, String lastname, String address,
			String accountid, String billplan, String language, String custclass, float ageonnet, String status,
			String conntype, String custseg, String billmaster, String dob, String nationality, String iddetails) {
		super();
		this.mobileno = mobileno;
		this.firstname = firstname;
		this.midname = midname;
		this.lastname = lastname;
		this.address = address;
		this.accountid = accountid;
		this.billplan = billplan;
		this.language = language;
		this.custclass = custclass;
		this.ageonnet = ageonnet;
		this.status = status;
		this.conntype = conntype;
		this.custseg = custseg;
		this.billmaster = billmaster;
		this.dob = dob;
		this.nationality = nationality;
		this.iddetails = iddetails;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getMidname() {
		return midname;
	}

	public void setMidname(String midname) {
		this.midname = midname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAccountid() {
		return accountid;
	}

	public void setAccountid(String accountid) {
		this.accountid = accountid;
	}

	public String getBillplan() {
		return billplan;
	}

	public void setBillplan(String billplan) {
		this.billplan = billplan;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getCustclass() {
		return custclass;
	}

	public void setCustclass(String custclass) {
		this.custclass = custclass;
	}

	public float getAgeonnet() {
		return ageonnet;
	}

	public void setAgeonnet(float ageonnet) {
		this.ageonnet = ageonnet;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getConntype() {
		return conntype;
	}

	public void setConntype(String conntype) {
		this.conntype = conntype;
	}

	public String getCustseg() {
		return custseg;
	}

	public void setCustseg(String custseg) {
		this.custseg = custseg;
	}

	public String getBillmaster() {
		return billmaster;
	}

	public void setBillmaster(String billmaster) {
		this.billmaster = billmaster;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getIddetails() {
		return iddetails;
	}

	public void setIddetails(String iddetails) {
		this.iddetails = iddetails;
	}

}
