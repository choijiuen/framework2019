<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	String[] strs={"ab", "abc", "abcd", "abcde"};

	ArrayList<String> alist=new ArrayList<String>();
	alist.add("A");
	alist.add("AB");
	alist.add("ABC");
	alist.add("ABCD");
	
	HashSet<String> hset =new HashSet<String>();
	hset.add("a");			//HashSet은 순서가 없다. 
	hset.add("ab");
	hset.add("abc");
	hset.add("abcd");
	
	HashMap<String,String> hmap=new HashMap<String,String>();	
	hmap.put("key1", "val1");		//map도 순서가 없는데 hash랑 차이점은 구분은 할 수 있다. key를 줘서 
	hmap.put("key2", "val2");
	hmap.put("key3", "val3");
	hmap.put("key4", "val4");
	
	com.bit.entity.JavaBean bean = null;
	bean=new com.bit.entity.JavaBean();
	
	bean.setSu1(1234);
	bean.setSu2(3.14);
	bean.setCh('A');
	bean.setBoo(true);
	bean.setMsg("bean object");
	bean.setNalja(new java.util.Date());
	
	
	pageContext.setAttribute("bean", bean);
%>
<body>
	<h1>자료 표현</h1>
	<ul>
		<li>${bean.su1 }</li>	<!-- bean.su1 는 getSu1에 있는 su1을 받아오는것.. -->
		<li>${bean.su2 }</li>
		<li>${bean.ch }</li>
		<li>${bean.boo }</li>
		<li>${bean.msg }</li>
		<li>${bean.nalja }</li>
	</ul>
	
	
</body>
</html>