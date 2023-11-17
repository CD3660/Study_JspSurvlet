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
		document.getElementById('select').classList.add('active');
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
				class="page-section-heading text-center text-uppercase text-secondary mb-0">회원
				조회</h2>
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
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">번호</th>
							<th scope="col">이름</th>
							<th scope="col">생년월일</th>
							<th scope="col">혈액형</th>
							<th scope="col">수정</th>
							<th scope="col">삭제</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="dto">
							<tr>
								<th scope="row">${dto.userNo }</th>
								<td>${dto.userName }</td>
								<td>${dto.birthday }</td>
								<td>${dto.bloodType }</td>
								<td style="width: 20%"><a
									href="update?userNo=${dto.userNo }" class="btn btn-primary">정보수정</a></td>
								<td style="width: 20%"><a
									href="delete?userNo=${dto.userNo }" class="btn btn-danger"
									onclick="return confirm('${dto.userName}을(를) 삭제하시겠습니까?')">회원삭제</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>