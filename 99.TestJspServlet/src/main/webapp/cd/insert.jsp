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
		document.getElementById('insert').classList.add('active');
	}
</script>
</head>
<body id="page-top" onload="active()">
	<%@ include file="/include/header.jsp"%>
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Contact Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">회원 등록</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Contact Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Contact Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					<form id="contactForm" action="doinsert" method="post">
						<!-- userNo input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="no" type="number" name="userNo"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="no">번호</label>
							<div class="invalid-feedback" data-sb-feedback="no:required">번호는
								필수입니다.</div>
						</div>
						<!-- userName input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="name" type="text" name="userName"
								placeholder="Enter your name..." data-sb-validations="required" />
							<label for="name">이름</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">이름은
								필수입니다.</div>
						</div>
						<!-- userName input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="birthday" type="number"
								name="birthday" placeholder="" /> <label for="birthday">생년월일</label>

						</div>
						<!-- userName input-->
						<div class="form-floating mb-3">
							<input class="form-control" id="bloodtype" type="text"
								name="bloodType" placeholder="" /> <label for="bloodtype">혈액형</label>
						</div>
						<input type="submit" value="등록" class="btn btn-primary">
					</form>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/include/footer.jsp"%>
</body>
</html>