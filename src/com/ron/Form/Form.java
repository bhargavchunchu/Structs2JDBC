package com.ron.Form;

import java.util.ArrayList;
import java.util.List;

import com.ron.Model.Employee;
import com.ron.Service.Service;

//This class will act as a helping class to access all Objects 
public class Form {
	//private Employee employee = new Employee();
	private Service service = new Service();
	
	
	private List<Employee> elist = new ArrayList<Employee>();
	private String name; // tables field names
	private String email;
	private String password;
	private String phoneno;
	private String status;
	
	/*public Form(String email,String password)
	{
		super();
		this.email=email;
		this.password=password;
	}*/
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public List<Employee> getElist() {
		return elist;
	}
	public void setElist(List<Employee> elist) {
		this.elist = elist;
	}		
	
	public Service getService() {
		return service;
	}
	public void setService(Service service) {
		this.service = service;
	}
}