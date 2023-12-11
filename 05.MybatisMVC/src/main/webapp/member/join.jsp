<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/join.css" rel="stylesheet" media="all">
</head>

<body>
	<img alt="" src="images/bg-01.jpg"
		style="position: absolute; width: 100%; height: 100%; z-index: -1">
	<div class="p-t-100 p-b-70 font-poppins">
		<div class="wrapper wrapper--w680">
			<div class="card card-4">
				<div class="card-body">
					<h2 class="title">회원가입</h2>
					<form method="get" action="join.me" autocomplete="off">
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label" for="name">이름</label> <input
										class="input--style-4" type="text" name="name" id="name">
								</div>
							</div>

						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label" for="user_id">아이디</label> <input
										class="input--style-4" type="text" name="user_id" id="user_id">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">아이디 중복 확인</label><a
										class="btn btn--radius-2 btn--primary" id="check_id">아이디
										체크</a>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label" for="user_pw">비밀번호</label> <input
										class="input--style-4" type="password" name="user_pw"
										id="user_pw" autocomplete="off">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label" for="user_pw_check">비밀번호 확인</label> <input
										class="input--style-4" type="password" name="user_pw_check"
										id="user_pw_check" autocomplete="off">
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">생일</label>
									<div class="input-group-icon">
										<input class="input--style-4 js-datepicker" type="text"
											name="birth" id="birth"> <i
											class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
									</div>
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">전화먼호</label> <input class="input--style-4"
										type="text" name="phone" id="phone">
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">이메일</label> <input class="input--style-4"
										type="text" name="email" id="email">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">주소찾기</label> <a id="btn_post"
										class="btn btn--radius-2 btn--primary">주소 찾기</a>
								</div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<label class="label">주소</label> <input class="input--style-4"
										type="text" name="address" id="address">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<label class="label">우편번호</label> <input class="input--style-4"
										type="text" name="post" id="post">
								</div>
							</div>
						</div>
						<div class="p-t-15">
							<a class="btn btn--radius-2 btn--primary" id="btn_join">회원가입</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		
	</script>
	<script type="text/javascript">
		$('#btn_post')
				.click(
						function() {
							new daum.Postcode(
									{
										oncomplete : function(data) {
											var address = data.userSelectedType == 'R' ? data.roadAddress
													: data.jibunAddress;

											$('#address').val(address);
											$('#post').val(data.zonecode);
										}
									}).open();
						});
		$('#btn_join').click(function() {
			if (!$('#user_id').hasClass('checked')) {
				alert('아이디 중복확인을 해주세요');
				return;
			}

			console.log('유효성 검사');
			/* if($('#user_pw').val() != $('user_pw_check').val()){
				console.log('비밀번호 불일치');
				$('#user_pw').focus();
				return;
			} */
			$('form').submit();
		});
		$('#check_id').click(function() {
			console.log($('#user_id').val());
			if ($('#user_id').val() == '') {
				alert('아이디를 입력 해 주세요');
				$('#user_id').focus();
				return;
			}
			if ($('#user_id').val().length >= 5) {
				$.ajax({
					url : 'idCheck.me',
					data : {
						user_id : $('#user_id').val()
					},
					success : function(res) {
						console.log(res);
						if (res == 0) {
							alert('사용 가능한 아이디 입니다.');
							$('#user_id').addClass('checked');
						} else {
							alert('사용할 수 없는 아이디 입니다.');
						}
					},
					error : function(req, text) {
						console.log(req.status);
					}
				})
			} else {
				alert('5글자 이상 입력해주세요.');
				return;
			}
		});
	</script>



	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->