<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous">
	
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100"
			style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w" action=""
					method="post">
					<span class="login100-form-title p-b-53"> Sign In With </span> <a
						href="#" class="btn-face m-b-20"> <i
						class="fa fa-facebook-official"></i> Facebook
					</a> <a href="#" class="btn-google m-b-20"> <img
						src="images/icons/icon-google.png" alt="GOOGLE"> Google
					</a>

					<div class="p-t-31 p-b-9">
						<span class="txt1"> Username </span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Username is required">
						<input class="input100" type="text" name="user_id" id="user_id">
						<span class="focus-input100"></span>
					</div>

					<div class="p-t-13 p-b-9">
						<span class="txt1"> Password </span> <a href="#"
							class="txt2 bo1 m-l-5"> Forgot? </a>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="user_pw"
							id="user_pw" onkeypress=" if(event.keyCode==13) login();"> <span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<!-- <input class="login100-form-btn" value="Sign In" type="submit"> -->
						<a class="login100-form-btn" onclick="login();" style="color: white;">Sign In</a>
					</div>

					<div class="w-full text-center p-t-55">
						<span class="txt2"> Not a member? </span> <a href="#"
							class="txt2 bo1"> Sign up now </a>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script type="text/javascript">
		function login() {
			if($('#user_id').val()==''){
				$('#user_id').focus();
				return;
			} else if($('#user_pw').val()==''){
				$('#user_pw').focus();
				return;
			}
			$.ajax({
				method: 'post',
				url: 'login.me',
				data: {user_id:$('#user_id').val(),user_pw:$('#user_pw').val() },
				success: function( response ){
					if(response == '로그인 실패'){
						alert('로그인 실패');
						$('#user_id').focus();
					} else {
						console.log('페이지 새로고침');
						location.href='/mvc';
					}
				},
				error: function( req, text ){
					alert(req.status+'오류. 다시 로그인 시도를 해주세요.');
				}
			})
	
		}
	</script>
	<div id="dropDownSelect1"></div>
	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>
</body>
</html>