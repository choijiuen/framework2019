<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="msgs" value="java, web, db, spring"></c:set>
	<c:forTokens items="${msgs }" delims="," var="msg">	<!-- item은 대상 delims는 무슨 문자로 자를지
														꼭 자료구조 넣어서 던질 필요없이 간단하게,, -->
	
		<p>${msg }</p>
	</c:forTokens>
	
	<p>begin</p>
		<c:import url="ex03.jsp"></c:import>		<!-- import 하는 것, ex03에 있는 데이터 가져와서 출력 -->
	<p>end</p>
	
	<!--<c:url value="http://naver.com"></c:url>	 주소 객체 -->
	<c:url value="target.jsp" var="target">
		<c:param name="id" value="admin"></c:param>
	</c:url>	
	
	
	<c:redirect url="${target }"></c:redirect> <!-- 이 주소로 바로감 무식 -->
	<a href="${target }">link</a>		<!-- 여기서 link누르면 위에 param을 url에서 받는다  -->
	<div>
		<c:import url="https://www.daum.net"></c:import> <!-- 이거 중요 날씨같은거 가져다가 , 내가 원하는 것만 파싱해서 뿌려줄수 있다. 근데 이렇게 쓰면 안됨, 승인 받고 써야됨 -->
	</div>
</body>
</html>