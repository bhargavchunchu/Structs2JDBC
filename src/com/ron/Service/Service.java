package com.ron.Service;

import com.ron.Dao.Dao;
import com.ron.DaoImple.DaoImplementation;

public class Service {
	private Dao dao =(Dao) new DaoImplementation();

	public Dao getDao() {
		return dao;
	}

	public void setDao(Dao dao) {
		this.dao = dao;
	}

	
}
