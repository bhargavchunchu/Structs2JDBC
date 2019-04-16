package com.ron.Action;

import java.util.Map;

import javax.swing.JOptionPane;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;
import com.ron.Form.Form;
import com.ron.Model.Employee;


public class OnlyAction{
	
	//getters and setters  
	private Form form = new Form();
	private Employee employee = new Employee();
	
	public Form getForm() {
		return form;
	}
	public void setForm(Form form) {
		this.form = form;
	}
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
	private String email_id,password;  
	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	//getters and setters  
	




	
	public String loginMethod(){
	
		String status = Action.ERROR;		
		System.out.println("Inside Login method of only action");
		getEmployee().setEmail(getForm().getEmail());
		getEmployee().setPassword(getForm().getPassword());
		getEmployee().setName(getForm().getName());
		getEmployee().setStatus(getForm().getStatus());
		//getSessions().setEmail(getSession().getEmail());
		//System.out.println(getSession().getEmail());
		
		if(getForm().getService().getDao().getEmployee(getEmployee())==1){
			status = Action.SUCCESS;
		}
		else if(getForm().getService().getDao().getEmployee(getEmployee())==2)
		{
			
			status=Action.LOGIN;
		}
		else if(getForm().getService().getDao().getEmployee(getEmployee())==3)
		{
			status=Action.NONE;
		}
		else{		
			 JOptionPane.showMessageDialog(null, "Invalid Email or password!");
			status = Action.ERROR;
		}		
		return status;
	}			
	public String registerMethod(){
		String status = Action.ERROR;		
		getEmployee().setName(getForm().getName());
		getEmployee().setEmail(getForm().getEmail());
		getEmployee().setPassword(getForm().getPassword());
		getEmployee().setPhoneno(getForm().getPhoneno());	
		getEmployee().setStatus(getForm().getStatus());
		//String x = getEmployee().setStatus(getForm().getStatus());
		if(getForm().getService().getDao().addEmployee(getEmployee())){
			status = Action.SUCCESS;
		}else{
			JOptionPane.showMessageDialog(null, "email exits");
			status = Action.ERROR;
		}
		return status;
	}					  
}