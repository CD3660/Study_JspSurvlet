<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1px solid">
	<% for(int i=2; i<=9; i++){%>
		<tr>
		<%for(int j=1; j<=9; j++){%>
			<td><%=i %> x <%=j %> = <%=i*j %></td>
		<% } %>
		</tr>
	<% } %>
	</table>
	<p></p>
	<table border="1px solid">
	<% for(int i=1; i<=9; i++){%>
		<tr>
		<%for(int j=2; j<=9; j++){%>
			<td><%=j %> x <%=i %> = <%=i*j %></td>
		<% } %>
		</tr>
	<% } %>
	</table>
	<p></p>
	<table border="1px solid" style="color :white; font-weight: bold;">
	<% for(int i=2; i<=9; i++){%>
		<%if(i%2==0){ %>
		<tr style="background-color: blue">
		<% } else { %>
		<tr style="background-color: green">
		<% } %>
		<%for(int j=1; j<=9; j++){%>
			<td><%=i %> x <%=j %> = <%=i*j %></td>
		<% } %>
		</tr>
	<% } %>
	</table>
</body>
</html>