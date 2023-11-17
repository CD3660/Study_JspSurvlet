<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function active() {
		document.getElementById('update').classList.add('active');
	}
</script>
</head>
<body id="page-top" onload="active()">
	<%@ include file="/include/header.jsp"%>
	<!-- Portfolio Section-->
	<section class="page-section portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">추가
				화면</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- table -->
			<div class="divider-custom">
				<form style="width: 50%" action="doupdate" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">번호</label> <input type="hidden"
							class="form-control" name="userNo" value="${dto.userNo}">
						<p>${dto.userNo}</p>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">이름</label> <input type="hidden"
							class="form-control" name="userName" value="${dto.userName}">
						<p>${dto.userName}</p>
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">생년월일</label> <input type="number"
							class="form-control" name="birthday" value="${dto.birthday}">
					</div>
					<div class="form-group">
						<label for="exampleInputEmail1">혈액형</label> <input type="text"
							class="form-control" value="${dto.bloodType}" name="bloodType">
					</div>
					<input type="submit" class="btn btn-primary" value="수정">
				</form>

			</div>
		</div>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>