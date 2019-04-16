package com.ron.Model;

public class Business {
	
	private String email;
	private String sname;
	private String OpenTiming;
	private String CloseTiming;
	private String Category;
	private String Address;
	private String Area;
	private String contact;
	public String getEmail() {
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
		Area = area;
	}
	
	
	@Override
	public String toString() {
		System.out.println("Business [email=" + email + ", sname=" + sname + ", OpenTiming=" + OpenTiming + ", CloseTiming="
				+ CloseTiming + ", Category=" + Category + ", Address=" + Address + ", Area=" + Area + ", contact="
				+ contact + "]");
		return "Business [email=" + email + ", sname=" + sname + ", OpenTiming=" + OpenTiming + ", CloseTiming="
				+ CloseTiming + ", Category=" + Category + ", Address=" + Address + ", Area=" + Area + ", contact="
				+ contact + "]";
	}
	
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}

	

}
