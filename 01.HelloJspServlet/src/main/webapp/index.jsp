<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인덱스-CD</h1>
	<table border="1px solid">
		<tr>
			<td>GET 방식</td>
			<td>
				<form action="Ex02_Servlet" method="get">
					<input type="text" name="param1"> 
					<input type="submit" value="전송">
				</form>
			</td>
		</tr>
		<tr>
			<td>POST 방식</td>
			<td>
				<form action="Ex02_Servlet" method="post">
					<input type="text" name="param2"> 
					<input type="submit" value="전송">
				</form>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<br>
	<form action="Ex03" method="post">
		<input type="text" name="id"><input type="password" name="pw"><input type="submit" value="로그인">
	</form>
</body>
</html>