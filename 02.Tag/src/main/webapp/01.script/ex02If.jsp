<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>If문</h1>
	<%! int iVar = 0; %>
	<p><%= iVar++ %></p>
	<!-- if문으로 ivar의 값이 홀수인지 짝수인지 HTML p태그로 출력해보기 -->
	<% if(iVar%2==0){ %>
		<p>짝수 <%=iVar %></p>
	<% } else { %>
		<p>홀수 <%=iVar %></p>
	<% } %>
</body>
</html>