package com.ron.Service;

import com.ron.Model.Forget;
import com.ron.Dao.DaoForgot;
import com.ron.DaoImple.DaoForgImple;

public class Service3 {
	
	private DaoForgot daof=(DaoForgot) new DaoForgImple();

	public DaoForgot getDaof() {
		return daof;
	}

	public void setDaof(DaoForgot daof) {
		this.daof = daof;
	}
	
}
