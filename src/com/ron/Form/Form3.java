package com.ron.Form;

import java.util.ArrayList;
import java.util.List;

import com.ron.Model.Forget;
import com.ron.Service.Service3;

public class Form3 {

	private Service3 service3=new Service3();
	
    private List<Forget> flist = new ArrayList<Forget>();
	
	private String email;
	
	
	
	public Service3 getService3() {
		return service3;
	}

	public void setService3(Service3 service3) {
		this.service3 = service3;
	}

	public List<Forget> getFlist() {
		return flist;
	}

	public void setFlist(List<Forget> flist) {
		this.flist = flist;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
}
