package com.bit.action;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.Action;

public class Ex01Action implements Action {

	Logger log =Logger.getLogger("com.bit.action.Ex01Action");
	@Override
	public String execute() throws Exception {
		log.debug("호출");
		//return "input";	//struts.xml에서 result에서 name에서 주소 정함 
		return this.SUCCESS;
	}

}
