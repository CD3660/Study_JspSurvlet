<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<a href="newpage" class="btn btn-info">생성</a>
	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">이름</th>
				<th scope="col">출생년도</th>
				<th scope="col">주소</th>
				<th scope="col">전화번호</th>
				<th scope="col" style="color:red;">삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="dto">
				<tr>
					<td><a href="detail?name=${dto.userName}" >${dto.userName}</a></td>
					<td>${dto.birthYear}</td>
					<td>${dto.address}</td>
					<td>${dto.mobile}</td>
					<td><a href="delete?userName=${dto.userName}" class="btn btn-danger">삭제</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>