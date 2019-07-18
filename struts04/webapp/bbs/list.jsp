<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>리스트 페이지</h1>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>

		<c:forEach items="${list }" var="bean">				<!-- 이거는 값이 없어도 에러가 아니고 그냥 값이 안나온다. -->
			<tr>
				<td><a href="">${bean.num }</a></td>
				<td><a href="">${bean.sub }</a></td>
				<td><a href="">${bean.name }</a></td>
				<td><a href="">${bean.nalja }</a></td>
			</tr>
		</c:forEach>
	</table>
	
	<a href="add.action">[입력]</a>
</body>
</html>