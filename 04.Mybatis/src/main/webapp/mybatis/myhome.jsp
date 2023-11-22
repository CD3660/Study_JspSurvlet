<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><a href="select.mytbl">select 이동</a></h3>
	<h3>insert</h3>
	<form action="insert.mytbl" method="post">
		<input type="text" name="col1" placeholder="col1">
		<input type="text" name="col2" placeholder="col2">
		<input type="text" name="col3" placeholder="col3">
		<input type="submit">
	</form>
	<h3>update</h3>
	<form action="update.mytbl" method="post">
		<input type="text" name="col1" placeholder="col1">
		<input type="text" name="col2" placeholder="col2">
		<input type="text" name="col3" placeholder="col3">
		<input type="submit">
	</form>
	<h3>delete</h3>
	<form action="delete.mytbl" method="post">
		<input type="text" name="col1" placeholder="col1">
		<input type="text" name="col2" placeholder="col2">
		<input type="text" name="col3" placeholder="col3">
		<input type="submit">
	</form>
</body>
</html>