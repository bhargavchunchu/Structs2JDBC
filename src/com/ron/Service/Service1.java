package com.ron.Service;



import com.ron.Dao.DaoBusiness;
import com.ron.DaoImple.DaoBusImple;


public class Service1 {
	private DaoBusiness dao1 =(DaoBusiness) new DaoBusImple();

	public DaoBusiness getDao1() {
		return dao1;
	}

	public void setDao1(DaoBusiness dao1) {
		this.dao1 = dao1;
	}


}
