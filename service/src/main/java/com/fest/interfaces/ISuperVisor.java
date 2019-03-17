package com.fest.interfaces;

import java.util.List;

import com.fest.model.SuperVisor;

public interface ISuperVisor {

	public List<SuperVisor>getAllSuperVisor();
	public SuperVisor getById(int id);
}
