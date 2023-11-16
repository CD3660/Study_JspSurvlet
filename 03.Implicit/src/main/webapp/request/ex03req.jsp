<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	 	
	<h3>${key} : 해당하는 규칙은 request.getAttribute("key")</h3>
	<c:forEach var="i" begin="0" end="10">
		<p>반복문 ${i}</p>
	</c:forEach>
	
	<c:forEach items="${list}" var="str">
		<p>${str}</p>
	</c:forEach>
	
	
	
	
	
	
	
	
	<%@ include file="/include/footer.jsp"%>
</body>
</html>