package com.bit.action;

import com.opensymphony.xwork2.Action;

public class ResultAction implements Action {
	String id, pw;
	
	
	
	
	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getPw() {
		return pw;
	}




	public void setPw(String pw) {
		this.pw = pw;
	}




	@Override
	public String execute() throws Exception {
		if(id.equals("") || pw.equals(""))return this.INPUT; 	//id, pw 입력 안됐으면 input으로 
																//struts.xml 에서 
		return this.SUCCESS;									//입력 됐으면 result name="success" 인 주소로 간다.
	}

}
