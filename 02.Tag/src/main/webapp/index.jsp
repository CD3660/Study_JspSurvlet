<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>201호 JSP</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Custom Google font-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
	rel="stylesheet" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
</head>
<body class="d-flex flex-column h-100">
	<main class="flex-shrink-0">
		<!-- Navigation-->
		<nav class="navbar navbar-expand-lg navbar-light bg-white py-3">
			<div class="container px-5">
				<a class="navbar-brand" href="index.jsp"><span
					class="fw-bolder text-primary">JspServlet Tag</span></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder">
						<li class="nav-item"><a class="nav-link" href="index.jsp">홈으로</a></li>
						<li class="nav-item"><a class="nav-link" href="resume.html">파리
								생제르맹</a></li>
						<li class="nav-item"><a class="nav-link" href="projects.html">아르헨티나
								국가대표</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.html">호날두
								음해하러 가기</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Header-->
		<header class="py-5">
			<div class="container px-5 pb-5">
				<div class="row gx-5 align-items-center">
					<div class="col-xxl-5">
						<!-- Header text content-->
						<div class="text-center text-xxl-start">
							<div
								class="badge bg-gradient-primary-to-secondary text-white mb-4">
								<div class="text-uppercase">Argentina &middot; no.10
									&middot; Messi</div>
							</div>
							<div class="fs-3 fw-light text-muted">All Time Number One</div>
							<h1 class="display-3 fw-bolder mb-5">
								<span class="text-gradient d-inline">숭배합니다 GOAT</span>
							</h1>
							<div
								class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xxl-start mb-3">
								<a
									class="btn btn-primary btn-lg px-5 py-3 me-sm-3 fs-6 fw-bolder"
									href="resume.html">숭배하기</a> <a
									class="btn btn-outline-dark btn-lg px-5 py-3 fs-6 fw-bolder"
									href="projects.html">그의 업적</a>
							</div>
						</div>
					</div>
					<div class="col-xxl-7">
						<!-- Header profile picture-->
						<div class="d-flex justify-content-center mt-5 mt-xxl-0">
							<div class="profile bg-gradient-primary-to-secondary">
								<!-- TIP: For best results, use a photo with a transparent background like the demo example below-->
								<!-- Watch a tutorial on how to do this on YouTube (link)-->
								<img class="profile-img" src="assets/messi.png" alt="..." />
								<div class="dots-1">
									<!-- SVG Dots-->
									<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										viewBox="0 0 191.6 1215.4"
										style="enable-background: new 0 0 191.6 1215.4"
										xml:space="preserve">
                                            <g
											transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
											d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
											d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
											d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
											d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
											d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
											d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
											d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
											d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
											d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
											d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
											d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
											d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
											d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
											d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
											d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
											d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
											d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
											d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
											d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
											d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
									<!-- END of SVG dots-->
								</div>
								<div class="dots-2">
									<!-- SVG Dots-->
									<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										viewBox="0 0 191.6 1215.4"
										style="enable-background: new 0 0 191.6 1215.4"
										xml:space="preserve">
                                            <g
											transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
											d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
											d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
											d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
											d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
											d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
											d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
											d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
											d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
											d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
											d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
											d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
											d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
											d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
											d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
											d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
											d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
											d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
											d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
											d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
											d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
									<!-- END of SVG dots-->
								</div>
								<div class="dots-3">
									<!-- SVG Dots-->
									<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										viewBox="0 0 191.6 1215.4"
										style="enable-background: new 0 0 191.6 1215.4"
										xml:space="preserve">
                                            <g
											transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
											d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
											d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
											d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
											d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
											d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
											d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
											d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
											d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
											d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
											d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
											d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
											d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
											d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
											d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
											d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
											d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
											d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
											d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
											d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
											d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
									<!-- END of SVG dots-->
								</div>
								<div class="dots-4">
									<!-- SVG Dots-->
									<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										viewBox="0 0 191.6 1215.4"
										style="enable-background: new 0 0 191.6 1215.4"
										xml:space="preserve">
                                            <g
											transform="translate(0.000000,1280.000000) scale(0.100000,-0.100000)">
                                                <path
											d="M227.7,12788.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,12801.6,289.7,12808.6,227.7,12788.6z"></path>
                                                <path
											d="M1507.7,12788.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,12801.6,1569.7,12808.6,1507.7,12788.6z"></path>
                                                <path
											d="M227.7,11508.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,11521.6,289.7,11528.6,227.7,11508.6z"></path>
                                                <path
											d="M1507.7,11508.6c-151-50-253-216-222-362c25-119,136-230,254-255c194-41,395,142,375,339c-11,105-90,213-190,262        C1663.7,11521.6,1569.7,11528.6,1507.7,11508.6z"></path>
                                                <path
											d="M227.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,10241.6,289.7,10248.6,227.7,10228.6z"></path>
                                                <path
											d="M1507.7,10228.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,10241.6,1569.7,10248.6,1507.7,10228.6z"></path>
                                                <path
											d="M227.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,8961.6,289.7,8968.6,227.7,8948.6z"></path>
                                                <path
											d="M1507.7,8948.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,8961.6,1569.7,8968.6,1507.7,8948.6z"></path>
                                                <path
											d="M227.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,7681.6,289.7,7688.6,227.7,7668.6z"></path>
                                                <path
											d="M1507.7,7668.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,7681.6,1569.7,7688.6,1507.7,7668.6z"></path>
                                                <path
											d="M227.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,6401.6,289.7,6408.6,227.7,6388.6z"></path>
                                                <path
											d="M1507.7,6388.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,6401.6,1569.7,6408.6,1507.7,6388.6z"></path>
                                                <path
											d="M227.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,5121.6,289.7,5128.6,227.7,5108.6z"></path>
                                                <path
											d="M1507.7,5108.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,5121.6,1569.7,5128.6,1507.7,5108.6z"></path>
                                                <path
											d="M227.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,3841.6,289.7,3848.6,227.7,3828.6z"></path>
                                                <path
											d="M1507.7,3828.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,3841.6,1569.7,3848.6,1507.7,3828.6z"></path>
                                                <path
											d="M227.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,2561.6,289.7,2568.6,227.7,2548.6z"></path>
                                                <path
											d="M1507.7,2548.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,2561.6,1569.7,2568.6,1507.7,2548.6z"></path>
                                                <path
											d="M227.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C383.7,1281.6,289.7,1288.6,227.7,1268.6z"></path>
                                                <path
											d="M1507.7,1268.6c-105-35-200-141-222-248c-43-206,163-412,369-369c155,32,275,190,260,339c-11,105-90,213-190,262        C1663.7,1281.6,1569.7,1288.6,1507.7,1268.6z"></path>
                                            </g>
                                        </svg>
									<!-- END of SVG dots-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div class="container px-5 my-5">
				<div class="text-center mb-5">
					<h1 class="display-5 fw-bolder mb-0">
						<span class="text-gradient d-inline">스크립트 태그(Script Tag)</span>
					</h1>
				</div>
				<div class="row gx-5 justify-content-center">
					<div class="col-lg-11 col-xl-9 col-xxl-8">
						<!-- Script Section-->
						<section>
							<div
								class="d-flex align-items-center justify-content-between mb-4">
								<h2 class="text-primary fw-bolder mb-0">Script Tag</h2>
							</div>
							<!-- Script Card 1-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-primary fw-bolder mb-2">1. 태그 처음 사용</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="01.script/ex00Into.jsp">태그와 변수 이용</a>
											<br><br>
											<a href="01.script/ex01Var.jsp">여러 변수 선언, 할당, 출력</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Script Card 2-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-primary fw-bolder mb-2">2. 제어문</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="01.script/ex02For.jsp">For문</a>
											<p></p>
											<a href="01.script/ex02If.jsp">If문</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Script Card 3-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-primary fw-bolder mb-2">3. 실습</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="01.script/ex03TestForIf.jsp">For문 If문 합 구하기</a>
											<p></p>
											<a href="01.script/ex04ForFor.jsp">구구단 만들기</a>
											<p></p>
											<a href="01.script/etcMethod.jsp">메소드</a>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- Directive Section-->
						<section>
							<h2 class="text-secondary fw-bolder mb-4">Directive Tag</h2>
							<!-- Directive Card 1-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-secondary fw-bolder mb-2">1.디렉티브 태그</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="02.directive/Ex01_Directive.jsp">1.디렉티브 기본 설정</a>
											<p></p>
											<a href="02.directive/Ex02_ErrorMain.jsp">2.에러 페이지</a>
										</div>
									</div>
								</div>
							</div>

							<!-- Directive Card 2-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-secondary fw-bolder mb-2">2.디렉티브 인클루드</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="02.directive/Ex03_Main.jsp">1.붙이기 header, footer</a>
											<p></p>
											<a href="02.directive/Ex04_Main.jsp">2.붙이기 header, footer</a>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- Action Section -->
						<section>
							<h2 class="text-success fw-bolder mb-4">Action Tag</h2>
							<!-- Action Card 1-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-success fw-bolder mb-2">액션 포워드(Forward)</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="03.action/Ex01_Forward.jsp">1.포워드</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Action Card 2-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-success fw-bolder mb-2">JSP include</div>
											</div>
										</div>
										<div class="col-lg-8">
											<a href="03.action/Ex02_Include.jsp">1.JSP include</a>
										</div>
									</div>
								</div>
							</div>
							<!-- Action Card 3-->
							<div class="card shadow border-0 rounded-4 mb-4">
								<div class="card-body p-3">
									<div class="row align-items-center gx-5">
										<div class="col text-center text-lg-start mb-4 mb-lg-0">
											<div class="bg-light p-4 rounded-4">
												<div class="text-success fw-bolder mb-2">Bean객체(JSP)</div>
											</div>
										</div>
										<div class="col-lg-8"><div>
										JSP(Spring) Bean 객체 핵심이 되는 내용이지만 JSP 코드로는 사용이 매우 불편하다.
										스프링 기능 없이 만드는 것 가체가 매우 불편하다.
										객체를 항상 new로 초기화 x -> Spring 속성을 이용해서 자동으로 설정을 로딩해서 객체로 만드는 용도로 사용된다.
										</div></div>
									</div>
								</div>
							</div>
						</section>
						<!-- Divider-->
						<div class="pb-5"></div>
						<!-- Skills Section-->
						<section>
							<!-- Skillset Card-->
							<div class="card shadow border-0 rounded-4 mb-5">
								<div class="card-body p-5">
									<!-- Professional skills list-->
									<div class="mb-5">
										<div class="d-flex align-items-center mb-4">
											<div
												class="feature bg-primary bg-gradient-primary-to-secondary text-white rounded-3 me-3">
												<i class="bi bi-tools"></i>
											</div>
											<h3 class="fw-bolder mb-0">
												<span class="text-gradient d-inline">그의 기술</span>
											</h3>
										</div>
										<div class="row row-cols-1 row-cols-md-3 mb-4">
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">드리블</div>
											</div>
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">득점력</div>
											</div>
											<div class="col">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">플레이
													메이킹</div>
											</div>
										</div>
										<div class="row row-cols-1 row-cols-md-3">
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">프리킥</div>
											</div>
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">오프
													더 볼</div>
											</div>
											<div class="col">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">부상
													빈도</div>
											</div>
										</div>
									</div>
									<!-- Languages list-->
									<div class="mb-0">
										<div class="d-flex align-items-center mb-4">
											<div
												class="feature bg-primary bg-gradient-primary-to-secondary text-white rounded-3 me-3">
												<i class="bi bi-code-slash"></i>
											</div>
											<h3 class="fw-bolder mb-0">
												<span class="text-gradient d-inline">그의 기록</span>
											</h3>
										</div>
										<div class="row row-cols-1 row-cols-md-3 mb-4">
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">라리가
													10회 우승</div>
											</div>
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">리그앙
													2회 우승</div>
											</div>
											<div class="col">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">챔피언스리그
													4회 우승</div>
											</div>
										</div>
										<div class="row row-cols-1 row-cols-md-3">
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">월드컵
													1회 우승</div>
											</div>
											<div class="col mb-4 mb-md-0">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">발롱도르
													8회 수상</div>
											</div>
											<div class="col">
												<div
													class="d-flex align-items-center bg-light rounded-4 p-3 h-100">FIFA
													올해의 선수 7회 수상</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		<!-- About Section-->
		<section class="bg-light py-5">
			<div class="container px-5">
				<div class="row gx-5 justify-content-center">
					<div class="col-xxl-8">
						<div class="text-center my-5">
							<h2 class="display-5 fw-bolder">
								<span class="text-gradient d-inline">For Messi</span>
							</h2>
							<p class="lead fw-light mb-4">메시는 세계 최고의 축구선수입니다.</p>
							<p class="text-muted">축구 역사상 최다 공격 포인트, 최다 도움 및 최다 우승 기록자이자,
								발롱도르, FIFA 올해의 선수, 유러피언 골든슈, FIFA 월드컵 골든볼 최다 수상자이며 바르셀로나, 아르헨티나
								축구 국가대표팀, 라리가 역대 최다 득점자이다.</p>
							<div class="d-flex justify-content-center fs-2 gap-4">
								<a class="text-gradient" href="#!"><i class="bi bi-twitter"></i></a>
								<a class="text-gradient" href="#!"><i class="bi bi-linkedin"></i></a>
								<a class="text-gradient" href="#!"><i class="bi bi-github"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- Footer-->
	<footer class="bg-white py-4 mt-auto">
		<div class="container px-5">
			<div
				class="row align-items-center justify-content-between flex-column flex-sm-row">
				<div class="col-auto">
					<div class="small m-0">Copyright &copy; Your Website 2023</div>
				</div>
				<div class="col-auto">
					<a class="small" href="#!">Privacy</a> <span class="mx-1">&middot;</span>
					<a class="small" href="#!">Terms</a> <span class="mx-1">&middot;</span>
					<a class="small" href="#!">Contact</a>
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
