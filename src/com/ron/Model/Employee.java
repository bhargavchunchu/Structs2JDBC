/* This class is exact conversion of database.employee table 
 *in to Plain Old Java Object(POJO)
 */
package com.ron.Model;

public class Employee {
  //variables names must match with database.employee
	private String name; // tables field names
	private String email;
	private String password;
	private String phoneno;
	private String status;
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
	
	
}