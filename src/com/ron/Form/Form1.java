package com.ron.Form;

import java.util.ArrayList;
import java.util.List;

import com.ron.Model.Business;
import com.ron.Model.Employee;
import com.ron.Service.Service;
import com.ron.Service.Service1;

public class Form1 {

	private Service1 service1 = new Service1();
	
	private List<Business> elist = new ArrayList<Business>();
	
	private String email;
	private String sname;
	private String OpenTiming;
	private String CloseTiming;
	private String Category;
	private String Address;
	private String Area;
	private String contact;
	
	public String getEmail() {
		System.out.println(email);
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getOpenTiming() {
		return OpenTiming;
	}
	public void setOpenTiming(String openTiming) {
		OpenTiming = openTiming;
	}
	public String getCloseTiming() {
		return CloseTiming;
	}
	public void setCloseTiming(String closeTiming) {
		CloseTiming = closeTiming;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getArea() {
		return Area;
	}
	public void setArea(String area) {
		System.out.println(area);
		Area = area;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	
	public Service1 getService1() {
		return service1;
	}
	public void setService1(Service1 service1) {
		this.service1 = service1;
	}
	public List<Business> getElist() {
		return elist;
	}
	public void setElist(List<Business> elist) {
		this.elist = elist;
	}
}
