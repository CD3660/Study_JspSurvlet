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
	<%@ include file="/include/header.jsp"%>

	<div
		style="border: 1px solid; align-self: center; width: 50%; padding: 20px">
		<form action="update" method="post">
			<div class="form-group">
				<label>이름</label>
				<!-- <input type="text" class="form-control" name="userName" value="${dto.userName}"> -->
				<input type="hidden" class="form-control" name="userName" value="${dto.userName}">
				<p>${dto.userName}</p>
			</div>
			<div class="form-group">
				<label>출생연도</label><input type="number" class="form-control"
					name="birthYear" value="${dto.birthYear}">
			</div>
			<div class="form-group">
				<label>주소</label><input type="text" class="form-control"
					name="address" value="${dto.address}">
			</div>
			<div class="form-group">
				<label>전화번호</label><input type="text" class="form-control"
					name="mobile" value="${dto.mobile}">
			</div>
			<input type="submit" class="btn btn-primary" value="수정하기">
		</form>
	</div>

	<%@ include file="/include/footer.jsp"%>
</body>
</html>