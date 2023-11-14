<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메소드 사용</h1>
	<%!int getSum(int a, int b) {
		return a + b;
	}
	int getMinus(int a, int b) {
		return a - b;
	}
	int getMul(int a, int b) {
		return a * b;
	}
	int getDiv(int a, int b) {
		return a / b;
	}%>
	<a>getSum: <%=getSum(10, 20)%></a>
	<a>getMinus: <%=getMinus(10, 20)%></a>
	<a>getMul: <%=getMul(10, 20)%></a>
	<a>getDiv: <%=getDiv(10, 20)%></a>
</body>
</html>