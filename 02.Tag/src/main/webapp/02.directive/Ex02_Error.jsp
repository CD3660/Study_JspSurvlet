<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>알 수 없는 오류 발생</h1>
	<h2>너가 뭘 할 수 있는데</h2>
	<%= exception.getMessage() %>
</body>
</html>