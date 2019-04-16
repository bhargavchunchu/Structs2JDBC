package com.ron.Action;

import com.opensymphony.xwork2.Action;
import com.ron.Form.Form3;
import com.ron.Model.Forget;

public class ForAction {
	
	private Form3 form3 = new Form3();
	private Forget forget = new Forget();
	
	public Form3 getForm3() {
		return form3;
	}

	public void setForm3(Form3 form3) {
		this.form3 = form3;
	}

	public Forget getForget() {
		return forget;
	}

	public void setForget(Forget forget) {
		this.forget = forget;
	}


	
	public String execute() {
		String status = Action.ERROR;
		
		getForget().setEmail(getForm3().getEmail());
		
		if(getForm3().getService3().getDaof().addForgot(getForget())==1){
			status = Action.SUCCESS;
		}
		else 
		{
			status=Action.ERROR;
		}
		return status;
	}

}
