package com.bit.action;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.bit.model.*;
import com.bit.model.entity.*;

public class ListAction implements Action{
	
	private List<Struts04Dto> list;
	
	public List<Struts04Dto> getList() {
		return list;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		list= new Struts04Dao().getList();
		return this.SUCCESS;
	}
}
