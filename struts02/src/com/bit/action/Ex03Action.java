package com.bit.action;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.Action;

public class Ex03Action implements Action{
	Logger log=Logger.getLogger("com.bit.action.Ex03Aciton");
	String id;
	int num;
	
	public void setId(String id) {	//setter�� ���� �ޱ� ���ؼ��� �������ټ� �ִ� ����� �ʿ��ϴ�.
										//struts.xml ���� <action name="ex03" class="com.bit.action.Ex03Action">	
										//<interceptor-ref name="params"></interceptor-ref>
										//<result name="success">/result.jsp</result>
										//</action>
		this.id = id;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public String getId() {
		return id;
	}
	
	public int getNum() {
		return num;
	}
	@Override
	public String execute() throws Exception {
		log.debug("param:"+id);
		log.debug("param:"+(num+1));
		return this.SUCCESS;
	}
}
