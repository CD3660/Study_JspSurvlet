<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px solid" style="align-self: center">
		<tr>
			<th>col1</th>
			<th>col2</th>
			<th>col3</th>
		<tr>
			<c:forEach items="${list }" var="vo">
				<tr>
					<td>${vo.col1 }</td>
					<td>${vo.col2 }</td>
					<td>${vo.col3 }</td>
				<tr>
			</c:forEach>
	</table>
	<table border="1px solid" style="align-self: center">
		<c:forEach items="${list }" var="vo">
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>