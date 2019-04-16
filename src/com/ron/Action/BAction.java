package com.ron.Action;

import com.opensymphony.xwork2.Action;
import javax.swing.JOptionPane;
import com.ron.Model.Business;
import com.ron.Form.Form1;


public class BAction {
	private Form1 form1 = new Form1();
	

	private Business business = new Business();
	
	
	public Form1 getForm1() {
		return form1;
	}

	public void setForm1(Form1 form1) {
		this.form1 = form1;
	}

	public Business getBusiness() {
		return business;
	}

	public void setBusiness(Business business) {
		this.business = business;
	}
	
	public String BusinessRegMethod() {
		String status = Action.ERROR;
		getBusiness().setSname(getForm1().getSname());
		getBusiness().setEmail(getForm1().getEmail());
		getBusiness().setAddress(getForm1().getAddress());
		getBusiness().setArea(getForm1().getArea());
		getBusiness().setCategory(getForm1().getCategory());
		getBusiness().setOpenTiming(getForm1().getOpenTiming());
		getBusiness().setCloseTiming(getForm1().getCloseTiming());
		getBusiness().setContact(getForm1().getContact());
		System.out.println("**************"+getForm1().getAddress());
		if(getForm1().getService1().getDao1().addBusiness(getBusiness())==1){
			JOptionPane.showMessageDialog(null, "Sucessfully Registered");
			status = Action.SUCCESS;
		
		}else{
			JOptionPane.showMessageDialog(null, "Invalid Details!");
			status = Action.ERROR;
		}
		return status;
	}
	

}
