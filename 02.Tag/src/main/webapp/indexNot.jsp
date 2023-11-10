<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<!-- bootstrap 사용하기 위한 cdn -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<title>JSP 태그</title>
</head>
<body class="bg-primary text-light">
	<h3>bootstrap</h3>
	<div class="container-fluid">
		<br> <br> <br>
		<div class="btn-group" role="group"
			aria-label="Basic radio toggle button group">
			<input type="radio" class="btn-check" name="btnradio" id="btnradio1"
				autocomplete="off" checked> <label
				class="btn btn-outline-light" for="btnradio1">Radio 1</label> <input
				type="radio" class="btn-check" name="btnradio" id="btnradio2"
				autocomplete="off"> <label class="btn btn-outline-light"
				for="btnradio2">Radio 2</label> <input type="radio"
				class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
			<label class="btn btn-outline-light" for="btnradio3">Radio 3</label>
		</div>
	</div>
	<!-- bootstrap 사용하기 위한 cdn -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>